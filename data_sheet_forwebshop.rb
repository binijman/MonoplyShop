database = [] # create empty database
# - Create Streets in database
      straten.each do |name, info|
                               # (name, group  , price  ,revenue )
         database.push Street.new(name, info[0], info[1], info[2])
         Street.create({
           name: name,
           group: info[0],

         })
      end
