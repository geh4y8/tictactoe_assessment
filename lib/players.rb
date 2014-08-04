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

p1 = Players.new('Bert')
p2 = Players.new('Ernie')
p p1.name
p Players.players_arr
