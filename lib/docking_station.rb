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

    def release_broken_bike
        fail 'No broken bikes available' if broken_bikes.empty?
        broken_bike = broken_bikes.pop
        bikes.delete broken_bike
    end
    
    private

    def working_bikes
        bikes.reject {|bike| bike.broken?}
    end

    def broken_bikes
        bikes.reject{|bike| bike.working?}
    end

    def broken_bikes
        bikes.select{|bike|bike.broken?}
    end


end

