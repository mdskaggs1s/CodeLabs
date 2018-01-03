require_relative 'player'
require_relative 'Die'
require_relative 'game_turn'
require_relative 'treasure_trove'


class Game
    attr_reader :name
    #initializing varibles in game
    def initialize(title)
        @title = title
        @players = []
    end
    #adds player to array
    def add_players(a_player)
        @players.push(a_player)
    end
    #prints stats of games
    def print_stats
        strong_players, weak_players = @players.partition { |n| n.strong?}
        puts "\n #{@title} Statistics:"
        puts "\n#{strong_players.size} strong players:"
        strong_players.each do |player|
            puts "#{player.name} has a health of #{player.health}!"
        end
        puts "\n#{weak_players.size} weak players:"
        weak_players.each do |player|
            puts "#{player.name} has a health of #{player.health}!"
        end

        sorted_players = @players.sort { |a,b| b.score <=> a.score}
        puts "\n#{@title} High Scores:"
        sorted_players.each do |player|
            puts "#{player.name} .........#{player.score}"
        end

        @players.each do |player|
            puts "\n#{player.name}'s point totals:"
            player.each_found_treasure do |treasure|
                puts "#{treasure.points} total #{treasure.name} points"
            end
            puts "#{player.points} grand total points"
        end
    end        

    def load_players(player_file)
        File.readlines(player_file).each do |line|
             name, health = line.split(',')
             player = Player.new(name, Integer(health))
             add_players(player)
        end
    end

    
    #main loop of game
    def play(rounds)
        treasures = TreasureTrove::TREASURES
        puts "\nThere are #{treasures.size} treasures to be found:"
        treasures.each do |treasure|
            puts "A #{treasure.name} is worth #{treasure.points} points"
        end
        puts "There are #{@players.size} players in #{@title}: "    
        1.upto(rounds) do |round|
            puts "\nRound #{round}:" 
            @players.each do |player|
                GameTurn.take_turn(player)
                puts player
            end
        end
     end
end

