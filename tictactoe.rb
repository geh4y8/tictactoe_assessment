require './lib/game'
require './lib/players'

def main_menu
	puts "*****WELCOME TO TIC-TAC-TOE*****"
	puts "Enter player 1 name"
	@player1 = gets.chomp
	p1 = Players.new(@player1)
	puts "Enter player 2 name"
	@player2 = gets.chomp
	p2 = Players.new(@player2)
	puts "Press 1 to start a new game or 3 to exit"
	input = gets.chomp
	if input == '1'
		start_game
	elsif input == '3'
		exit
	end
end

def start_game
	@new_game = Game.new
	loop do
		puts @new_game.board
		puts "#{@player1} pick your spot"
		input = gets.chomp.to_i
		@new_game.p1mark(input)
		puts @new_game.board
		win_game(@player1)
		puts "#{@player2} pick your spot"
		input = gets.chomp.to_i
		@new_game.p2mark(input)
		win_game(@player2)
	end
end

def win_game(player)
	if @new_game.winning_combos
		puts@new_game.board
		puts "#{player} WINS!"
		puts @new_game.winning_combos
		main_menu
	end
end

main_menu