 #require 'bundler'
#Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

player1 = Player.new("black")
player2 = Player.new("white")



points = false
while  (not points)
	puts""
	puts " ---------[ Voici l'etat de nos joueurs! ]------------ "
	puts "|           => #{player1.show_state}                  |"
	puts "|           => #{player2.show_state}                  |"
	puts " ----------------------------------------------------- "
	puts""
	puts "     Passons à la phase d'attaque        "
	puts "     ____________________________        "
	player1.attacks(player2)
	puts""
	player2.attacks(player1)

	if (player1.life_points <= 0 || player2.life_points <= 0 )
		points = true
	else 
	end
end

#binding.pry