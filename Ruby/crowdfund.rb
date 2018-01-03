class Project
    def initialize(name, fundamt)
        @name = name
        @fundamt = fundamt
    end

    def list_funds
        
    end
end


def startup
    puts "Hello welcome to the Fundzone\nWhat would you like to do?"
    puts "List Funds\nContribute"
    input = gets.chomp
    if input == "list funds"
        Project.list_funds
end

startup