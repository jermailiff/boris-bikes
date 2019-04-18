require_relative 'bike'
require_relative 'bike_container'

class DockingStation
    include BikeContainer

    def release_bike
        fail 'No bikes available' if working_bikes.empty?
        working_bike = working_bikes.pop
        bikes.delete working_bike
    end

    def dock(bike)
       add_bike bike
    end

    private

    def working_bikes
        bikes.reject {|bike| bike.broken?}
    end

end

