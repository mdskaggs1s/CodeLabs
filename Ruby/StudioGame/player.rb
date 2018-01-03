require_relative "treasure_trove"
require_relative 'playable'

class Player
    attr_reader :health     
    attr_accessor :name
    include Playable

#initializes instance variables
    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
        @found_treasures = Hash.new(0)

    end
#prints status to screen
    def to_s
         "Hello I'm #{@name} with a health of #{@health} and have a score of #{score}."
    end

#Defines score of player
    def score
        @health + points
    end


#treasure inv
    def found_treasure(treasure)
        @found_treasures[treasure.name] += treasure.points
        puts "#{@name} found a #{treasure.name} worth #{treasure.points}!"
        puts "#{@name}'s treasures: #{@found_treasures}"
    end

    def points
        @found_treasures.values.reduce(0, :+)
    end

    def each_found_treasure
        @found_treasures.each do |naem, points|
            yield Treasure.new(name, points)
        end
    end
end
