require_relative 'game'

describe Game do 

    before do
        @game = Game.new("Knuckleheads")

        @initial_health = 100
        @player = Player.new("moe", @initial_health)

        @game.add_player(@player)
    end

    it "is a high roll" do
        Die.any_instance.stub(:roll).and_return(5)

        @game.play

        @player.health.should == @initial_health + 15
    end
end