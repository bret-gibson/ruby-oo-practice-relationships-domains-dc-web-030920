require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Ozzy Osbourne")
guest2 = Guest.new("Bret Gibson")
guest3 = Guest.new("Danny Succar")

listing1 = Listing.new("New York")
listing4 = Listing.new("New York")

listing2 = Listing.new("Austin")
listing3 = Listing.new("Los Angeles")

trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest2, listing1)
trip3 = Trip.new(guest2, listing2)
trip4 = Trip.new(guest3, listing3)

Pry.start
