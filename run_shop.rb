require "./classes.rb"
require "./data.rb"


def buy_street(database,player)
  #-List available cards
  puts  "Which available cards would you like to buy?\n "
  index = 1
  database.each do |name, info|
    if info[3]=="vacant"
      puts "#{index} - € #{info[2]}\t€ #{info[4]} revenue per month\t- #{info[0]},\t#{name}"
      list_cards << name
      index += 1
    end
  end

  #-Ask choise
  choice = ""
  while !(Array(1..index).include? choice)
    puts "\nPlease enter your choice (1 - #{index-1})\n "
    choice = gets.chomp.to_i
  end
  puts "\n#{player} your choice is #{list_cards[choice]}\n "
  database[list_cards[choice-1]][3]="#{player}"
  return straten
end


#-Vuldatabase
database = fill_database()
#-Tijdelijke set
set = 3
list_cards = []

system ('clear')

#-Intro + playername
puts "Welcome on the street-shop Online!\n\nWhat is your name?"
player = gets.chomp
puts "Here you can buy your own street and create revenue from tennants!\n\n"
buy_street(database,player)

#
# database.each do |street|
#   puts "Rent for #{street.name} = € #{street.rent(set)}"
# end
