require "./classes.rb"

# - Method to Fill the Store Database.

def fill_database()
                # name  => [group , color , price, revenue, set_size]
      straten = {"Dorpsstraat"      => ["Ons Dorp", "Purple", 60, 2,2],
                 "Brink"            => ["Ons Dorp", "Purple", 60, 4,2],

                 "Steenstraat"      => ["Arnhem", "Babyblue", 100, 6,3],
                 "Ketelstraat"      => ["Arnhem", "Babyblue", 100, 6,3],
                 "Velperplein"      => ["Arnhem", "Babyblue", 120, 8,3],

                 "Barteljorisstraat" => ["Haarlem", "Light-Purple", 140, 10,3],
                 "Zijlweg"          => ["Haarlem", "Light-Purple", 140, 10,3],
                 "Houtstraat"       => ["Haarlem", "Light-Purple", 150, 12,3],

                 "Neude"            => ["Utrecht", "Dutch-Orange", 180, 14,3],
                 "Biltstraat"       => ["Utrecht", "Dutch-Orange", 180, 14,3],
                 "Vreeburg"         => ["Utrecht", "Dutch-Orange", 200, 16,3],

                 "A-Kerkhof"        => ["Groningen", "Heartbleed-Red", 220, 18,3],
                 "Groote Markt"     => ["Groningen", "Heartbleed-Red", 220, 18,3],
                 "Heerestraat"      => ["Groningen", "Heartbleed-Red", 240, 20,3],

                 "Spui"             => ["Den Haag", "Banana-Yellow", 260, 22,3],
                 "Plein"            => ["Den Haag", "Banana-Yellow", 260, 22,3],
                 "Lange-Poten"      => ["Den Haag", "Banana-Yellow", 280, 24,3],

                 "Hofplein"         => ["Rotterdam", "Racing-Green", 300, 26,3],
                 "Blaak"            => ["Rotterdam", "Racing-Green", 300, 26,3],
                 "Coolsingel"       => ["Rotterdam", "Racing-Green", 320, 28,3],

                 "Leidsche-Straat"  => ["Amsterdam", "Bankrupt-Blue", 350, 35,2],
                 "Kalverstraat"     => ["Amsterdam", "Bankrupt-Blue", 400, 50,2],
                }

    stations =
            # [name]
            [ "Noord", "Oost", "Zuid", "West" ]
    nutsbedrijven =
            # [name]
            [ "Waterleiding", "Elektriciteitsbedrijf" ]

            # name  => [color, set_size]
    groups ={
            "Ons Dorp"    => ["Purple",2],
            "Arnhem"      => ["Babyblue",3],
            "Haarlem"     => ["Light-Purple",3],
            "Utrecht"     => ["Dutch-Orange",3],
            "Groningen"   => ["Heartbleed-Red",3],
            "Den Haag"    => ["Banana-Yellow",3],
            "Rotterdam"   => ["Racing-Green",3],
            "Amsterdam"   => ["Bankrupt-Blue",2],
            "Station"     => ["",2],
            "Nutsbedrijf" => ["",2],
            }

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
