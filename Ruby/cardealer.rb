require './cars'


puts "welcome to CarLot"
puts "would you like to see our selection y/n"
input = gets.chomp

if input == "n"
  return

elsif input == "y"
  puts "#{red_ranger.car_details}"


end
