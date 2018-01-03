require_relative 'player'
require_relative 'Die'
require_relative 'treasure_trove'

module GameTurn
    def self.take_turn(player)
        die = Die.new
        number_rolled = die.roll
        if number_rolled < 3
            player.damaged
        elsif number_rolled < 5
            puts "#{player.name} was skipped"
        else
            player.healed
        end
        
        treasure = TreasureTrove.random
        player.found_treasure(treasure)

    end
end