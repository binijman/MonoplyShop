require "./classes.rb"           #  classes:  Player / Property / Street / Station
require "./buy_property.rb"      #  method:   buy_property(database, player)
require "./list_playercards.rb"  #  method:   list_playercards(database, player)
require "./data.rb"              #  database  (streets / stations / utilties)
                                 #  method:   fill_database()

#-start program
system('clear')
#-Vuldatabase
database = fill_database()
#-Tijdelijke set
set = 3
list_cards = []

# - Intro + playername
puts "Welcome on the street-shop Online!\n\nWhat is your name?"
player = gets.chomp
system('clear')
puts "\nHere you can buy your own street and create revenue from tennants!\n\n"

# - Let player buy property cards (as many as he would like)

answer = "y"              # Set answer to 'y' the first time to start while-loop 'true'
while answer == "y"
  buy_property(database,player) # Let player choose property and get ownership

  puts "Would you like to buy another property? (y/n)"
  answer = gets.chomp     # y/n answer

  system('clear')         # Clean the screen
  list_playercards(database, player) # List all the cards of player.
end

# - Thank Player fot buying and display purchases
puts "Thank you for using our store!"
