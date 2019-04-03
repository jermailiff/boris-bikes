require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20

    attr_accessor :capacity, :bikes

    def initialize (capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def capacity
        @capacity
    end

    def release_bike
        fail 'No bikes available' if empty?
        fail 'Broken bikes unavailable' if broken_bike
        release_working_bike
    end

    def dock(bike)
        fail 'Docking station full' if full?
        @bikes << bike
    end
    
    private

    def working_bike
        @bikes.reject {|bikes| bikes.broken? == true}
    end

    def broken_bike
        @bikes.all? {|bikes| bikes.broken? == true}
    end

    def release_working_bike
        bike = working_bike
        @bikes.pop
    end

    def empty?
        @bikes.empty?
    end

    def full?
        @bikes.count >= @capacity
    end

end

