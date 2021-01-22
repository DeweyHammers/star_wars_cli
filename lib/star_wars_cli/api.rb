class Api
    URL = "https://swapi.dev/api/"

    def self.save_people
        url_index = 1
        num_index = 1
        while index < 10
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
        index = 1
        while index < 7
            page = HTTParty.get("#{URL}planets/?page=#{index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        Planets.new(hash)
                    end
                end
            end
            index += 1
        end
    end

    def self.save_films
        page = HTTParty.get("#{URL}films/")
        page.map do |key, value|
            if value.is_a?(Array)
                value.map do |hash|
                    Films.new(hash)
                end
            end
        end
    end

    def self.save_species
        index = 1
        while index < 5
            page = HTTParty.get("#{URL}species/?page=#{index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        Species.new(hash)
                    end
                end
            end
            index += 1
        end
    end

    def self.save_vehicles
        index = 1
        while index < 5
            page = HTTParty.get("#{URL}vehicles/?page=#{index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        Vehicles.new(hash)
                    end
                end
            end
            index += 1
        end
    end

    def self.save_starships
        index = 1
        while index < 5
            page = HTTParty.get("#{URL}starships/?page=#{index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        Starships.new(hash)
                    end
                end
            end
            index += 1
        end
    end
end