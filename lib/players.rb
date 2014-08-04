class Players

	attr_accessor :name
	
	@@players_arr = []

	def Players.players_arr
		@@players_arr
	end

	def initialize(name)
		@name = name
		@@players_arr << self
	end
end