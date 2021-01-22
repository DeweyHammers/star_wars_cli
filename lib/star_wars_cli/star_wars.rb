class StarWars
    attr_reader :status

    extend Information
    
    def self.get_category(input)
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

    def self.status
        @status
    end

    def self.list_info(input)
        info = nil
        index = input.to_i
        case @status
        when 'person'
        when 'planet'
        when 'film'
            Films.all.map do |film| 
                if film.url == "http://swapi.dev/api/films/#{input}/"
                    info = film
                end
            end
        when 'specie'
        when 'vehicle'
        when 'starship'
        end
        info
    end
end