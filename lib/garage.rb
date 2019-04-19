require_relative 'bike'
require_relative 'bike_container'

class Garage
    include BikeContainer

    def accept(bike)
        add_bike bike
    end

    def fix_bikes
        bikes.each do |bike|
            bike.fix
        end
    end

    def release_working_bike
        fail "Garage cannot release broken bikes" if bikes_broken
        working_bike = working_bikes.pop
        bikes.delete working_bike
    end
    
    private
    
    def bikes_broken
        bikes.all? {|bike|bike.broken?}
    end

    def working_bikes
        bikes.reject {|bike|bike.broken?}
    end


end
