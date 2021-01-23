class Api
    URL = "https://swapi.dev/api/"

    def self.save_people
        url_index = 1
        num_index = 1
        while url_index < 10
            page = HTTParty.get("#{URL}people/?page=#{url_index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        people = People.new(hash)
                        people.num = num_index
                        num_index += 1
                        people
                    end
                end
            end
            url_index += 1
        end
    end

    def self.save_planets
        url_index = 1
        num_index = 1
        while url_index < 7
            page = HTTParty.get("#{URL}planets/?page=#{url_index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        planet = Planets.new(hash)
                        planet.num = num_index
                        num_index += 1
                        planet
                    end
                end
            end
            url_index += 1
        end
    end

    def self.save_films
        num_index = 1
        page = HTTParty.get("#{URL}films/")
        page.map do |key, value|
            if value.is_a?(Array)
                value.map do |hash|
                    film = Films.new(hash)
                    film.num = num_index
                    num_index += 1
                    film
                end
            end
        end
    end

    def self.save_species
        url_index = 1
        num_index = 1
        while url_index < 5
            page = HTTParty.get("#{URL}species/?page=#{url_index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        specie = Species.new(hash)
                        specie.num = num_index
                        num_index += 1
                        specie
                    end
                end
            end
            url_index += 1
        end
    end

    def self.save_vehicles
        url_index = 1
        num_index = 1
        while url_index < 5
            page = HTTParty.get("#{URL}vehicles/?page=#{url_index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        vechicle = Vehicles.new(hash)
                        vechicle.num = num_index
                        num_index += 1
                        vechicle
                    end
                end
            end
            url_index += 1
        end
    end

    def self.save_starships
        url_index = 1
        num_index = 1
        while url_index < 5
            page = HTTParty.get("#{URL}starships/?page=#{url_index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        starship = Starships.new(hash)
                        starship.num = num_index
                        num_index += 1
                        starship
                    end
                end
            end
            url_index += 1
        end
    end
end