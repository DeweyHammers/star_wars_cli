class Films
    @@all = []

    def initialize(attrs)
        attrs.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        save()
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end