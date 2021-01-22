class Api
    URL = "https://swapi.dev/api/"

    def self.save_people
        index = 1
        while index < 10
            page = HTTParty.get("#{URL}people/?page=#{index}")
            page.map do |key, value|
                if value.is_a?(Array)
                    value.map do |hash|
                        People.new(hash)
                    end
                end
            end
            index += 1
        end
    end
end