class Game
	
	attr_accessor :board
	
	def initialize
		@board = [[1],[2],[3],[4],[5],[6],[7],[8],[9]]
	end

	def p1mark(input)
		@board[input-1] = ['X']
	end

	def p2mark(input)
		@board[input-1] = ["O"]
	end
end

