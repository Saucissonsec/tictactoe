// Copyright © 2015 Université Paris-Sud, Written by Lénaïc Bagnères, lenaic.bagneres@u-psud.fr

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef TIC_TAC_TOE_HPP
#define TIC_TAC_TOE_HPP

#include <array>
#include <vector>

#include "hopp/random.hpp"
#include "hopp/container/vector2.hpp"
#include "hopp/time/sleep.hpp"
#include "hopp/time/now.hpp"

#include "tree.hpp"

#define SIZE_BOARD 3

enum square_t {None, O, X};

std::ostream & operator <<(std::ostream & out, square_t const sqr)
{
	if (sqr == square_t::None) { out << " "; }
	else if (sqr == square_t::X) { out << "X"; }
	else { out << "O"; }
	return out;
}

// Forward declaration
class tic_tac_toe_t;
std::ostream & operator <<(std::ostream & out, tic_tac_toe_t const & tic_tac_toe);


// tic_tac_toe_t

class tic_tac_toe_t
{
private:

	std::array<std::array<square_t, SIZE_BOARD>, SIZE_BOARD> m_board;
	std::vector<hopp::vector2<square_t>> m_log_plays;
	size_t m_nb_rows;
	size_t m_nb_columns;
	square_t m_first_to_play;
	square_t m_playing;
	square_t m_winner;

public :

	tic_tac_toe_t():
		m_board(),
		m_playing(hopp::random::true_false() ? square_t::X : square_t::O),
		m_first_to_play(m_playing),
		m_winner(square_t::None),
		m_nb_rows(SIZE_BOARD),
		m_nb_columns(SIZE_BOARD)
		{
			for(auto& line : m_board)
			{
				line.fill(square_t::None); 
			}
		}

	std::array<std::array<square_t, SIZE_BOARD>, SIZE_BOARD> const & board() const { return m_board; }
	
	size_t nb_row() const { return m_nb_rows; } //or m_board.size
	
	size_t nb_col() const { return m_nb_columns; } //or m_board[0].size

	square_t get(size_t const i, size_t const j) const { return m_board[i][j]; }

	square_t operator ()(size_t const i, size_t const j) const { return get(i, j); }

	bool play(size_t const i, size_t const j)
	{
		if(get(i, j) == square_t::None)
		{
			get(i, j) = m_playing;
			if(pick_winner(i, j))
			{
				end_game(m_winner);
				return true;
			}
			next_turn();
			return true;
		}
		else
		{
			std::cerr << "ERROR when playing " << m_playing 
			<< " at " << i << ", " << j << ": " 
			<< get(i, j) << " already here" << std::endl;
			return false;
		}
	}

	bool pick_winner(size_t const i, size_t const j){
		if (get(i, 0) == m_playing && get(i, 1) == m_playing && get(i, 2) == m_playing) //checks horizontal
			{ 
				m_winner = m_playing; 
				return true;
			}
			
		else if (get(0, j) == m_playing && get(1, j) == m_playing && get(2, j) == m_playing) //checks vertical
			{ 
				m_winner = m_playing; 
				return true;
			}
			
		else if (get(0, 0) == m_playing && get(1, 1) == m_playing && get(2, 2) == m_playing) //checks diagonal l to r
			{ 
				m_winner = m_playing; 
				return true;
			}
			
		else if (get(0, 2) == m_playing && get(1, 1) == m_playing && get(2, 0) == m_playing) //chaeck diagonal r to l
			{
				m_winner = m_playing; 
				return true;
			}
			
		return false;
	}

	void next_turn()
	{
		if(m_playing == square_t::O)
			m_playing = square_t::X;
		else
			m_playing = square_t::O;
	}

	void end_game(square_t winner)
	{
		std::cout << winner << " wins the game" << std::endl;
		exit(0);
	}

private :
	//needed to change values internally
	square_t & get(size_t const i, size_t const j) { return m_board[i][j]; }
	
	square_t & operator ()(size_t const i, size_t const j) { return get(i, j); }
};

inline
std::ostream & operator <<(std::ostream & out, tic_tac_toe_t const & tic_tac_toe)
{
	out << "   | 0 | 1 | 2 |\n";
	for(size_t i = 0; i < tic_tac_toe.nb_row(); ++i)
	{
		out << "   -------------\n";
		out << i << ". ";
		for (size_t j = 0; j < tic_tac_toe.nb_col(); ++j)
		{
			out << "| " << tic_tac_toe(i, j) << " ";
		}
		out << "|\n";
	}
	out << "   -------------\n";
	
	return out;
}


// player_random

class player_random
{
	// TODO
};


// player_ai

class player_ai
{
	// TODO
};

#endif
