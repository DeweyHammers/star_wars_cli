class Api
    URL = "https://swapi.dev/api/"

    def self.save_people
        url_index = 1
        num_index = 1
        while url_index < 10
            page = HTTParty.get("#{URL}people/?page=#{url_index}")
            page.each do |key, value|
                if value.is_a?(Array)
                    value.each do |hash|
                        hash['num_index'] = num_index
                        People.new(hash)
                        num_index += 1
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
            page.each do |key, value|
                if value.is_a?(Array)
                    value.each do |hash|
                        hash['num_index'] = num_index
                        Planets.new(hash)
                        num_index += 1
                    end
                end
            end
            url_index += 1
        end
    end

    def self.save_films
        num_index = 1
        page = HTTParty.get("#{URL}films/")
        page.each do |key, value|
            if value.is_a?(Array)
                value.each do |hash|
                    hash['num_index'] = num_index
                    Films.new(hash)
                    num_index += 1
                end
            end
        end
    end

    def self.save_species
        url_index = 1
        num_index = 1
        while url_index < 5
            page = HTTParty.get("#{URL}species/?page=#{url_index}")
            page.each do |key, value|
                if value.is_a?(Array)
                    value.each do |hash|
                        hash['num_index'] = num_index
                        Species.new(hash)
                        num_index += 1
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
            page.each do |key, value|
                if value.is_a?(Array)
                    value.each do |hash|
                        hash['num_index'] = num_index
                        Vehicles.new(hash)
                        num_index += 1
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
            page.each do |key, value|
                if value.is_a?(Array)
                    value.each do |hash|
                        hash['num_index'] = num_index
                        Starships.new(hash)
                        num_index += 1
                    end
                end
            end
            url_index += 1
        end
    end
end