class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        
    end

    def trips
    end

    def trip_count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
    end

    def self.find_all_by_name(name)
    end

end