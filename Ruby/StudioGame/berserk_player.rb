require_relative 'player'

class BerserkPlayer < Player 
    def initialize(name, health = 100)
        super(name, health)
        @heal_count = 0
    end

    def berserk?
        @heal_count > 5
    end

    def healed
        super
        @heal_count += 1
        puts "#{@name} is berserk!" if berserk?
    end

    def damaged
        if berserk?
            healed
        else
            super
        end
    end
end