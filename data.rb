require "./classes.rb"

# - Method to Fill the Store Database.

def fill_database()
                # name  => [group , color , price, revenue, set_size]
      straten = {"Dorpsstraat"      => ["Ons Dorp", 60, 2],
                 "Brink"            => ["Ons Dorp", 60, 4],

                 "Steenstraat"      => ["Arnhem", 100, 6],
                 "Ketelstraat"      => ["Arnhem", 100, 6],
                 "Velperplein"      => ["Arnhem", 120, 8],

                 "Barteljorisstraat" => ["Haarlem", 140, 10],
                 "Zijlweg"          => ["Haarlem", 140, 10],
                 "Houtstraat"       => ["Haarlem", 150, 12],

                 "Neude"            => ["Utrecht", 180, 14],
                 "Biltstraat"       => ["Utrecht", 180, 14],
                 "Vreeburg"         => ["Utrecht", 200, 16],

                 "A-Kerkhof"        => ["Groningen", 220, 18],
                 "Groote Markt"     => ["Groningen", 220, 18],
                 "Heerestraat"      => ["Groningen", 240, 20],

                 "Spui"             => ["Den Haag", 260, 22],
                 "Plein"            => ["Den Haag", 260, 22],
                 "Lange-Poten"      => ["Den Haag", 280, 24],

                 "Hofplein"         => ["Rotterdam", 300, 26],
                 "Blaak"            => ["Rotterdam", 300, 26],
                 "Coolsingel"       => ["Rotterdam", 320, 28],

                 "Leidsche-Straat"  => ["Amsterdam", 350, 35],
                 "Kalverstraat"     => ["Amsterdam", 400, 50],
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
            "Station"     => [" ",2],
            "Nutsbedrijf" => [" ",2],
            }

database = []
  # - Create Streets in database
        straten.each do |name, info|
                                 # (name,price  ,revenue, set_size, group  , color)
           database.push Street.new(name,info[1],info[2], groups[info[0]][1] , info[0], groups[info[0]][0])
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
