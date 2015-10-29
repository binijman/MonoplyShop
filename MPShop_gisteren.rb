
system('clear')

straten = {"Dorpsstraat" => ["Ons Dorp", "Purple", 60, "vacant", 2],
           "Brink" => ["Ons Dorp", "Purple", 60, "vacant", 4],

           "Steenstraat" => ["Arnhem", "Babyblue", 100, "vacant", 6],
           "Ketelstraat" => ["Arnhem", "Babyblue", 100, "vacant", 6],
           "Velperplein" => ["Arnhem", "Babyblue", 120, "vacant", 8],

           "Barteljorisstraat" => ["Haarlem", "LightPurple", 140, "vacant", 10],
           "Zijlweg" => ["Haarlem", "LightPurple", 140, "vacant", 10],
           "Houtstraat" => ["Haarlem", "LightPurple", 150, "vacant", 12],

           "Neude" => ["Utrecht", "DutchOrange", 180, "vacant", 14],
           "Biltstraat" => ["Utrecht", "DutchOrange", 180, "vacant", 14],
           "Vreeburg" => ["Utrecht", "DutchOrange", 200, "vacant", 16],

           "A-Kerkhof" => ["Groningen", "HeartbleedRed", 220, "vacant", 18],
           "Groote Markt" => ["Groningen", "HeartbleedRed", 220, "vacant", 18],
           "Heerestraat" => ["Groningen", "HeartbleedRed", 240, "vacant", 20],

           "Spui" => ["Den Haag", "BananaYellow", 260, "vacant", 22],
           "Plein" => ["Den Haag", "BananaYellow", 260, "vacant", 22],
           "Lange-Poten" => ["Den Haag", "BananaYellow", 280, "vacant", 24],

           "Hofplein" => ["Rotterdam", "RacingGreen", 300, "vacant", 26],
           "Blaak" => ["Rotterdam", "RacingGreen", 300, "vacant", 26],
           "Coolsingel" => ["Rotterdam", "RacingGreen", 320, "vacant", 28],

           "Leidsche-Straat" => ["Amsterdam", "BankruptBlue", 350, "vacant", 35],
           "Kalverstraat" => ["Amsterdam", "BankruptBlue", 400, "vacant", 50],
          }

puts "Welcome on the street-shop Online!\n\nWhat is your name?"
name = gets.chomp

puts "Here you can buy your own street and create revenue from tennants!\n\n"


def buy_street(straten,name)
    index = 1
    choices = []

    system ('clear')
    puts  "Which vacant street would you like to be the fabulous owner of ?\n "

    straten.each do |straat, info|
      if info[3]=="vacant"
        puts "#{index} - € #{info[2]}\t€ #{info[4]} revenue per month\t- #{info[0]},\t#{straat}"
        choices << straat
        index += 1
      end
    end

    choice = ""
    while !(Array(1..index).include? choice)
      puts "\nPlease enter your choice (1 - #{index-1})\n "
      choice = gets.chomp.to_i
    end
    puts "\n#{name} your choice is #{choices[choice]}\n "
    straten[choices[choice-1]][3]="#{name}"
    return straten
end

answer = "y"
while answer == "y"
  buy_street(straten,name)
  puts "Would you like to buy another property? (y/n)"
  answer = gets.chomp
end

system('clear')

puts "Thank you for using our store!\nThese streets are now your property : "
puts "\nThese are you purchases:"
total = 0 ; revenue = 0
straten.each do |straat, info|
  if info[3]== name
    puts "- € #{info[2]}\t€ #{info[4]} revenue per month\t- #{info[0]},\t#{straat}"
    total += info[2]
    revenue += info[4]
  end
end
puts "\nYour total sum due is € #{total}, and your revenue will be € #{revenue} per month."
