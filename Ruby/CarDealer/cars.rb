require "./cardealer"

#Base class Car, setting up all the attributes of a car
class Car
  def initialize(model, make, year, amount, type, color)
    @model = model
    @make = make
    @amount = amount
    @type = type
    @color = color
    @year = year
  end

# prints car details to screen
  def list(all_cars)
    all_cars.each do |car|
      puts car_details  
  end

  def car_details
      puts "#{@year} #{@make} #{@model}"
      puts "Make: #{@make}\nModel: #{@model}\nType: #{@type}\nYear: #{@year}\nColor: #{@color}\nAmount: #{@amount}"
    end
  end

end
