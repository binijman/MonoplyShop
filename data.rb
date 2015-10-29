require "./classes.rb"

# - Method to Fill the Store Database.

def fill_database()
      straten = {"Dorpsstraat" => ["Ons Dorp", "Purple", 60, "vacant", 2,2],
               "Brink" => ["Ons Dorp", "Purple", 60, "vacant", 4,2],

               "Steenstraat" => ["Arnhem", "Babyblue", 100, "vacant", 6,3],
               "Ketelstraat" => ["Arnhem", "Babyblue", 100, "vacant", 6,3],
               "Velperplein" => ["Arnhem", "Babyblue", 120, "vacant", 8,3],

               "Barteljorisstraat" => ["Haarlem", "Light-Purple", 140, "vacant", 10,3],
               "Zijlweg" => ["Haarlem", "Light-Purple", 140, "vacant", 10,3],
               "Houtstraat" => ["Haarlem", "Light-Purple", 150, "vacant", 12,3],

               "Neude" => ["Utrecht", "Dutch-Orange", 180, "vacant", 14,3],
               "Biltstraat" => ["Utrecht", "Dutch-Orange", 180, "vacant", 14,3],
               "Vreeburg" => ["Utrecht", "Dutch-Orange", 200, "vacant", 16,3],

               "A-Kerkhof" => ["Groningen", "Heartbleed-Red", 220, "vacant", 18,3],
               "Groote Markt" => ["Groningen", "Heartbleed-Red", 220, "vacant", 18,3],
               "Heerestraat" => ["Groningen", "Heartbleed-Red", 240, "vacant", 20,3],

               "Spui" => ["Den Haag", "Banana-Yellow", 260, "vacant", 22,3],
               "Plein" => ["Den Haag", "Banana-Yellow", 260, "vacant", 22,3],
               "Lange-Poten" => ["Den Haag", "Banana-Yellow", 280, "vacant", 24,3],

               "Hofplein" => ["Rotterdam", "Racing-Green", 300, "vacant", 26,3],
               "Blaak" => ["Rotterdam", "Racing-Green", 300, "vacant", 26,3],
               "Coolsingel" => ["Rotterdam", "Racing-Green", 320, "vacant", 28,3],

               "Leidsche-Straat" => ["Amsterdam", "Bankrupt-Blue", 350, "vacant", 35,2],
               "Kalverstraat" => ["Amsterdam", "Bankrupt-Blue", 400, "vacant", 50,2],
              }

    stations =
            [ "Noord", "Oost", "Zuid", "West" ]
    nutsbedrijven =
            [ "Waterleiding", "Elektriciteitsbedrijf" ]


database = []
  # - Create Streets in database
        straten.each do |name, info|
           database.push Street.new(name,info[2],info[4],info[5],info[0],info[1])
        end

  # - Create Stations in database
        stations.each do |name|
           database.push Station.new(name)
        end

  # - Create Utility Companies in database
        nutsbedrijven.each do |name|
           database.push Utility.new(name)
        end

        return database
end
# - End Method




# - Debugging scripts to test data
# database.each do |card|
#   puts "Rent for #{card.name} = € #{card.rent(set)}"
# end
  #
  #
  # set = 1
  #
  # st1 = Station.new('Noord')
  # st2 = Station.new('Zuid')
  #
  # puts "\nType set size (1 - 3) (for set test)"
  # set = gets.chomp.to_i
  # brink = Street.new('Brink',60,4,2,'Ons Dorp',"Purple")
  #
  # puts "\nRent for #{brink.name} in the Town #{brink.town}= € #{brink.rent(set)} (#{set}/2)"
  # puts "Rent for #{st1.name} = € #{st1.rent(set)} (#{set}/4) "
