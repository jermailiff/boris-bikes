require_relative 'bike'
require_relative 'bike_container'

class Garage
    include BikeContainer

    alias_method :accept_bike, :add_bike

    def fix_bikes
        bike.fix
    end 

end
