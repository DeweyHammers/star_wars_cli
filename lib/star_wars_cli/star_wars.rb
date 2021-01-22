class StarWars
    def self.list_names(input)
        case input
        when "1"
            Api.save_people() if People.all.length == 0
            People.all.map.with_index do |person, index| 
                puts "#{index}. #{person.name}"
            end
        when "2"
            puts Planets.new("Earth").name
        when "3"
            puts Films.new("New Hope").name
        when "4"
            puts Species.new("Human").name
        when "5"
            puts Vehicles.new("Land Speeder").name
        when "6"
            puts Starships.new("Death Star").name
        when "exit"
            puts "Good bye!"
        else
            puts "invalid command"
            print "Please enter number: "
        end
    end
end