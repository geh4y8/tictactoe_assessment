require 'rspec'
#require 'game'
require 'players'

describe('Players') do
	it 'initializes with two players' do
		test_player1 = Players.new('Bert')
		test_player2 = Players.new('Ernie')
		expect(Players.players_arr).to eq([test_player1, test_player2])
	end
end