require "./classes.rb"
require "./data.rb"

# st1 = Station.new('Noord')
# st2 = Station.new('Zuid')
#
# set = 3
# brink = Street.new('Brink',100,12,3,'Utrecht',"Orange")
#
# puts "Rent for #{brink.name} = € #{brink.rent(set)}"
#
# set = 4
# puts "Rent for #{st1.name} = € #{st1.rent(set)}"
#
# collection = StreetCollection.new()
# streets = collection.streets

# create database var -> array[obj]
database = fill_database()
set = 3
database.each do |street|
  puts "Rent for #{street.name} = € #{street.rent(set)}"


end

#update the file appel
#menno joined the party!
