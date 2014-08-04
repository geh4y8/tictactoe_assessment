class Game
	
	attr_accessor :board_arr, :board
	
	def initialize
		@board_arr = [[1],[2],[3],[4],[5],[6],[7],[8],[9]]
		@board = "
    |     |
 7  |  8  |  9
----------------
    |     |
 4  |  5  |  6
----------------
    |     |
 1  |  2  |  3
		"
	end

	def p1mark(input)
		@board_arr[input-1] = ['X']
		@board.gsub!(input.to_s, 'X')
	end

	def p2mark(input)
		@board_arr[input-1] = ["O"]
		@board.gsub!(input.to_s, 'O')
	end

	def winning_combos
		x_wins = [['X'],['X'],['X']]
		o_wins = [['O'],['O'],['O']]

		if @board_arr.values_at(0,1,2) == x_wins || @board_arr.values_at(0,1,2) == o_wins
      "horizontal win"
    elsif @board_arr.values_at(0,4,8) == x_wins || @board_arr.values_at(0,4,8) == o_wins
      "diagonal win"
    elsif @board_arr.values_at(0,3,6) == x_wins || @board_arr.values_at(0,3,6) == o_wins
      "vertical win"
    elsif @board_arr.values_at(1,4,7) == x_wins || @board_arr.values_at(1,4,7) == o_wins
      "vertical win"
    elsif @board_arr.values_at(2,5,8) == x_wins || @board_arr.values_at(2,5,8) == o_wins
      "vertical win"
    elsif @board_arr.values_at(2,4,6) == x_wins || @board_arr.values_at(2,4,6) == o_wins
      "diagonal win"
    elsif @board_arr.values_at(3,4,5) == x_wins || @board_arr.values_at(3,4,5) == o_wins
      "horizontal win"
    elsif @board_arr.values_at(6,7,8) == x_wins || @board_arr.values_at(6,7,8) == o_wins
      "horizontal win"
    end
	end
end