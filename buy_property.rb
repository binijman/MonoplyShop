
def buy_property(database,player)
  #-List available cards
  puts  "\n#{player}, which of these still available cards would you like to buy?\n
#\tPrice\tRevenue\t\tProperty
------------------------------------------------------"
  vacant_list = []
  i = 0
  database.each do |property|
    if property.owner == "vacant"
      puts "#{i+1} -\t€ #{property.price}\t€ #{property.revenue} p/m \t#{property.group} - #{property.name}"
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
