class StarWars
    def self.get_category(input)
        case input
        when "1"
            Api.save_people() if People.all.length == 0
            People.all.map.with_index(1) do |person, index| 
                "#{index}. #{person.name}"
            end
        when "2"
            Api.save_planets() if Planets.all.length == 0
            Planets.all.map.with_index(1) do |planet, index| 
                "#{index}. #{planet.name}"
            end
        when "3"
            Api.save_films() if Films.all.length == 0
            Films.all.map.with_index(1) do |film, index|
                "#{index}. #{film.title}"
            end
        when "4"
            Api.save_species() if Species.all.length == 0
            Species.all.map.with_index(1) do |specie, index| 
                "#{index}. #{specie.name}"
            end
        when "5"
            Api.save_vehicles() if Vehicles.all.length == 0
            Vehicles.all.map.with_index(1) do |vehicle, index| 
                "#{index}. #{vehicle.name}"
            end
        when "6"
            Api.save_starships() if Starships.all.length == 0
            Starships.all.map.with_index(1) do |starship, index| 
                "#{index}. #{starship.name}"
            end
        end
    end

    def self.list_info(input)
        input = input.to_i
        film = nil
        Films.all.map do |index| 
            if index.url == "http://swapi.dev/api/films/#{input}/"
                film = index
            end
        end
        film
    end
end