require 'rspec'
require 'game'
require 'players'

describe('Players') do
	it 'initializes with two players' do
		test_player1 = Players.new('Bert')
		test_player2 = Players.new('Ernie')
		expect(Players.players_arr).to eq([test_player1, test_player2])
	end
end

describe('Game') do
	it 'initializes with 9 empty spaces' do
		test_game = Game.new
		expect(test_game.board).to eq([[1],[2],[3],[4],[5],[6],[7],[8],[9]])
	end

	it 'allows a player to mark a space' do
		test_game = Game.new
		expect(test_game.p1mark(3)).to eq ['X']
		expect(test_game.p2mark(5)).to eq ['O']
	end

	it 'recognizes when 3 spaces are marked by the same player' do
		test_game = Game.new
		test_game.p1mark(3)
		test_game.p1mark(6)
		test_game.p1mark(9)
		expect(test_game.winning_combos).to eq 'vertical win'
	end
end