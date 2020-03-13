require "pry"
class Listing

    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def guests
        Trip.all.select do |trip| 
            trip.listing == self
        end.map do |listing_trips| 
            listing_trips.guest
        end
    end

    def trips
        Trip.all.select do |trip| 
            trip.listing == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select{|listing| listing.city == city}
    end

    def self.most_popular
        most = 0
        self.all.reduce do |listing| 
           if listing.trip_count > most
                most = listing.trip_count
            else
                most
            end
        end
    end

# danny's logic: create if statment. if array exists with the trip listing then << into that list
# else create a new list/ listing. citys.count the largest number gets returned

end
