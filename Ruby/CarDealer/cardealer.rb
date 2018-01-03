@employee = ['111','222']
@menus = ['home', 'browse', 'login']

def menu_statement
  @answer = gets.chomp.downcase
end

def navigate_to
  if @answer == 'browse'
    browse_menu
  elsif @answer == 'login'
    login_menu
  end
end

def home_menu
  puts "Welcome to the Online Car-Mart!"
  puts "\nWhat would you like to do?\nBrowse\nLogin"
  menu_statement
  if @menus.include?(@answer)
    navigate_to
  end
end

def go_home
  puts "type home to go back to home menu."
  if @answer == 'home'
    home_menu
  end
end


def browse_menu
  puts "\nyou are now in the Browse Menu"
  puts "enter cars ID to see more"
  puts "934395948\n309239483"
  menu_statement
end

def login_menu
  puts "enter employee ID to enter"
    menu_statement
    go_home
    if @employee.include?(@answer)
      puts "you are now logged in"
    else
      puts "invalid ID"
      menu_statement
    end
end

home_menu
