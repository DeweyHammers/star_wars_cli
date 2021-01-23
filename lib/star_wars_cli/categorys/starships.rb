class Starships
    attr_accessor :num

    @@all = []

    def initialize(attrs)
        attrs.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        @num = num
        save()
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end