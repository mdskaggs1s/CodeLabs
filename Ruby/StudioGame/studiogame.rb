require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")
berserker = BerserkPlayer.new("berserker", 50)
knuckleheads.add_players(berserker)
loop do 
    puts "\nHow many game rounds? ('quit' to exit)"
    answer = gets.chomp.downcase
    case answer
    when /^\d+$/
        knuckleheads.play(answer.to_i)
    when 'quit' , 'exit'
        knuckleheads.print_stats
        break
    else
        puts "pleae enter a number or 'quit'"
    end
end
