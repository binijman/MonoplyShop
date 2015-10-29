require "./classes.rb"


class StreetCollection
    def initialize
      @straten = {"Dorpsstraat" => ["Ons Dorp", "Purple", 60, "vacant", 2,2],
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
      end

    def streets
      arr = []
      set= 1
            @straten.each do |straat, info|
               arr.push Street.new(straat,info[2],info[4],info[5],info[0],info[1])
            end
    return arr
    end
end
