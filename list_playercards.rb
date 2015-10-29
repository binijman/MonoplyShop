
def list_playercards(database, player)
    # - Display list of properties in possesion of Player
  player_cards = []  ;  i = 0 ; total = 0 ; revenue = 0
  #-List player cards
    puts "Cards held by #{player}:\n  Price\tRevenue\t\tProperty
    ------------------------------------------------------"

    database.each do |property|
        if property.owner == player
          puts "-\t€ #{property.price}\t€ #{property.revenue} p/m \t#{property.group} - #{property.name}"
            player_cards << property.name
            i += 1
            total += property.price
            revenue += property.revenue
        end
    end
  puts "    ------------------------------------------------------\nTotal   € #{total}\t€ #{revenue} revenue per month."
end
