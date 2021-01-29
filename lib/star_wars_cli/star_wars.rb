class StarWars
    extend Information

    def self.get_category_names(input)
        case input
        when "1"
            @status = 'People'
            if People.all.length == 0
                Cli.loading
                Api.save_people()
            end 
            People.all.map.with_index(1) {|person, index| "#{index}. #{person.name}"}
        when "2"
            @status = 'Planets'
            if Planets.all.length == 0
                Cli.loading
                Api.save_planets() 
            end
            Planets.all.map.with_index(1) {|planet, index| "#{index}. #{planet.name}"}
        when "3"
            @status = 'Films'
            if Films.all.length == 0
                Cli.loading
                Api.save_films()
            end 
            Films.all.map.with_index(1) {|film, index| "#{index}. #{film.title}"}
        when "4"
            @status = 'Species'
            if Species.all.length == 0
                Cli.loading
                Api.save_species()
            end 
            Species.all.map.with_index(1) {|specie, index| "#{index}. #{specie.name}"}
        when "5"
            @status = 'Vehicles'
            if Vehicles.all.length == 0
                Cli.loading
                Api.save_vehicles()
            end 
            Vehicles.all.map.with_index(1) {|vehicle, index| "#{index}. #{vehicle.name}"}
        when "6"
            @status = 'Starships'
            if Starships.all.length == 0
                Cli.loading
                Api.save_starships()
            end 
            Starships.all.map.with_index(1) {|starship, index| "#{index}. #{starship.name}"}
        end
    end

   def self.get_info(input)
        info = nil
        index = input.to_i
        case @status
        when 'People'
            People.all.each {|person| person.num_index == index ? info = person : info}
        when 'Planets'
            Planets.all.each {|planet| planet.num_index == index ? info = planet : info}
        when 'Films'
            Films.all.each {|film| film.num_index == index ? info = film : info}
        when 'Species'
            Species.all.each {|specie| specie.num_index == index ? info = specie : info}
        when 'Vehicles'
            Vehicles.all.each {|vehicle| vehicle.num_index == index ? info = vehicle : info}
        when 'Starships'
            Starships.all.each {|starship| starship.num_index == index ? info = starship : info}
        end
        info
    end

    def self.print_info(info)
        case @status
        when 'People'
            self.print_person_info(info)
        when 'Planets'
            self.print_planet_info(info)
        when 'Films'
            self.print_film_info(info)
        when 'Species'
            self.print_specie_info(info)
        when 'Vehicles'
            self.print_vehicle_info(info)
        when 'Starships'
            self.print_starship_info(info)
        end
    end
end