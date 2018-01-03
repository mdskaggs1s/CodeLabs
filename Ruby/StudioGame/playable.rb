module Playable

#Damages player
    def damaged
    @health -= 10
    puts "#{@name} got damaged!"
    end

#heals player  
    def healed
    @health += 15
    puts "#{@name} healed!!"
    end
#checks if player is strong
    def strong?
    @health > 100
    end

end