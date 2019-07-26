require 'pry'

class Player

	attr_accessor :name, :life_points
	def initialize(names)
		@name = names
		@life_points = 10
	end

	def gets_damage(damage)
		@life ="#{@life_points - damage}"
		@life_points -= damage
		while @life_points == 0
			puts "le joueur #{@name} a été tué "
			break
		end
	end

	def attacks(attacked)
		@attacked = attacked
		puts "#{name} attaque #{attacked.name}"
		puts "il lui inflige 5 points de dommages"
		result = attacked.compute_damage
		attacked.gets_damage(5)
	end

	def compute_damage
		return rand(1..6)
	end

	def show_state
		"#{@name} à #{@life_points} points de vie"
	end

end

#binding.pry
#puts "end of file"