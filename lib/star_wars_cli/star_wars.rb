class StarWars
    attr_reader :status

    extend Information
    
    def self.get_category_names(input)
        case input
        when "1"
            @status = 'person'
            Api.save_people() if People.all.length == 0
            People.all.map.with_index(1) do |person, index| 
                "#{index}. #{person.name}"
            end
        when "2"
            @status = 'planet'
            Api.save_planets() if Planets.all.length == 0
            Planets.all.map.with_index(1) do |planet, index| 
                "#{index}. #{planet.name}"
            end
        when "3"
            @status = 'film'
            Api.save_films() if Films.all.length == 0
            Films.all.map.with_index(1) do |film, index|
                "#{index}. #{film.title}"
            end
        when "4"
            @status = 'specie'
            Api.save_species() if Species.all.length == 0
            Species.all.map.with_index(1) do |specie, index| 
                "#{index}. #{specie.name}"
            end
        when "5"
            @status = 'vehicle'
            Api.save_vehicles() if Vehicles.all.length == 0
            Vehicles.all.map.with_index(1) do |vehicle, index| 
                "#{index}. #{vehicle.name}"
            end
        when "6"
            @status = 'starship'
            Api.save_starships() if Starships.all.length == 0
            Starships.all.map.with_index(1) do |starship, index| 
                "#{index}. #{starship.name}"
            end
        end
    end

   def self.list_info(input)
        info = nil
        index = input.to_i
        case @status
        when 'person'
            People.all.map do |person|
                if person.num == input.to_i
                    info = person
                end
            end
        when 'planet'
            Planets.all.map do |planet|
                if planet.url == "http://swapi.dev/api/planets/#{input}/"
                    info = planet
                end
            end
        when 'film'
            Films.all.map do |film| 
                if film.url == "http://swapi.dev/api/films/#{input}/"
                    info = film
                end
            end
        when 'specie'
            Species.all.map do |specie| 
                if specie.url == "http://swapi.dev/api/species/#{input}/"
                    info = specie
                end
            end
        when 'vehicle'
            Vehicles.all.map do |vehicle| 
                if vehicle.url == "http://swapi.dev/api/vehicles/#{index}/"
                    info = vehicle
                end
            end
        when 'starship'
            Starships.all.map do |starship| 
                if starship.url == "http://swapi.dev/api/starships/#{input}/"
                    info = starship
                end
            end
        end
        info
    end

    def self.status
        @status
    end
end