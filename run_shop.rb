require "./classes.rb"
require "./data.rb"


def buy_property(database,player)
  #-List available cards
  puts  "Which available cards would you like to buy?\n "
  list_cards = []
  database.each_with_index do |property, i|
    if property.owner == "vacant"
      puts "#{i+1} - € #{property.price}\t€ #{property.revenue} revenue per month,\t#{property.name}"
      vacant_list << property.name
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

#-Intro + playername
puts "Welcome on the street-shop Online!\n\nWhat is your name?"
player = gets.chomp
puts "Here you can buy your own street and create revenue from tennants!\n\n"
buy_property(database,player)

#
# database.each do |street|
#   puts "Rent for #{street.name} = € #{street.rent(set)}"
# end
