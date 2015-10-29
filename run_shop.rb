require "./classes.rb"
require "./data.rb"


def buy_property(database,player)
  #-List available cards
  puts  "Which available cards would you like to buy?\n "
  vacant_list = []
  i = 0
  database.each do |property|
    if property.owner == "vacant"
      puts "#{i+1} - € #{property.price}\t€ #{property.revenue} revenue per month,\t#{property.name}"
      vacant_list << property.name
      i += 1
    end
  end

  #-Ask choise
  choice = ""
  while !(Array(1..vacant_list.length).include? choice)
    puts "\nPlease enter your choice (1 - #{vacant_list.length})\n "
    choice = gets.chomp.to_i
  end
  puts "\n#{player} your choice is #{vacant_list[choice-1]}\n "
  db_i = database.index { |p| p.name == vacant_list[choice-1] }
  database[db_i].owner = player
end


#-Vuldatabase
database = fill_database()
#-Tijdelijke set
set = 3
list_cards = []

# system ('clear')

# - Intro + playername
puts "Welcome on the street-shop Online!\n\nWhat is your name?"
player = gets.chomp
puts "Here you can buy your own street and create revenue from tennants!\n\n"

# - Let player buy property cards (as many as he would like)
answer = "y"
while answer == "y"
  buy_property(database,player)
  puts "Would you like to buy another property? (y/n)"
  answer = gets.chomp
end
puts "Thank you for using our store!\nThe bought streets are now your property! "

# - Display list of properties in possesion of Player
player_cards = []  ;  i = 0 ; total = 0 ; revenue = 0
#-List player cards
  puts "\nThese are you purchases:"
  database.each do |property|
      if property.owner == player
          puts "#{i+1} - € #{property.price}\t€ #{property.revenue} revenue per month,\t#{property.name}"
          player_cards << property.name
          i += 1
          total += property.price
          revenue += property.revenue
      end
  end
puts "\nThe total value of your estate is € #{total}, and your can expect € #{revenue} revenue per month."
