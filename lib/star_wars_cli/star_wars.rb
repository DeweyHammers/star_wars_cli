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
            People.all.map.with_index(1) do |person, index| 
                "#{index}. #{person.name}"
            end
        when "2"
            @status = 'Planets'
            if Planets.all.length == 0
                Cli.loading
                Api.save_planets() 
            end
            Planets.all.map.with_index(1) do |planet, index| 
                "#{index}. #{planet.name}"
            end
        when "3"
            @status = 'Films'
            if Films.all.length == 0
                Cli.loading
                Api.save_films()
            end 
            Films.all.map.with_index(1) do |film, index|
                "#{index}. #{film.title}"
            end
        when "4"
            @status = 'Species'
            if Species.all.length == 0
                Cli.loading
                Api.save_species()
            end 
            Species.all.map.with_index(1) do |specie, index| 
                "#{index}. #{specie.name}"
            end
        when "5"
            @status = 'Vehicles'
            if Vehicles.all.length == 0
                Cli.loading
                Api.save_vehicles()
            end 
            Vehicles.all.map.with_index(1) do |vehicle, index| 
                "#{index}. #{vehicle.name}"
            end
        when "6"
            @status = 'Starships'
            if Starships.all.length == 0
                Cli.loading
                Api.save_starships()
            end 
            Starships.all.map.with_index(1) do |starship, index| 
                "#{index}. #{starship.name}"
            end
        end
    end

   def self.get_info(input)
        info = nil
        index = input.to_i
        case @status
        when 'People'
            People.all.map do |person|
                if person.num_index == input.to_i
                    info = person
                end
            end
        when 'Planets'
            Planets.all.map do |planet|
                if planet.num_index == input.to_i
                    info = planet
                end
            end
        when 'Films'
            Films.all.map do |film| 
                if film.num_index == input.to_i
                    info = film
                end
            end
        when 'Species'
            Species.all.map do |specie| 
                if specie.num_index == input.to_i
                    info = specie
                end
            end
        when 'Vehicles'
            Vehicles.all.map do |vehicle| 
                if vehicle.num_index == input.to_i
                    info = vehicle
                end
            end
        when 'Starships'
            Starships.all.map do |starship| 
                if starship.num_index == input.to_i
                    info = starship
                end
            end
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