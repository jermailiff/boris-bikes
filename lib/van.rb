require_relative 'bike'
require_relative 'bike_container'

class Van
    include BikeContainer

    def load(bike)
        add_bike bike
    end

    def unload(bike)
        remove_bike 
    end
    
end