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
        if empty?
            fail 'No bikes available'
        elsif broken?
            fail 'Broken bikes unavailable'
        else
            @bikes.pop
        end
    end

    def dock(bike)
        fail 'Docking station full' if full?
        @bikes << bike
    end
    
    private

    def empty?
        @bikes.empty?
    end

    def full?
        @bikes.count >= @capacity
    end

end