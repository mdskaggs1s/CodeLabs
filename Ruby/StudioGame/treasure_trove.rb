Treasure = Struct.new(:name, :points)

module TreasureTrove
    TREASURES = [
        Treasure.new(:pie,  5),
        Treasure.new(:bottle, 25),
        Treasure.new(:hammer, 50),
        Treasure.new(:boomstick, 60),
        Treasure.new(:crowbar, 100)
    ]

    def self.random
        TREASURES.sample
    end

end
