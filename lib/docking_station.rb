require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20

    attr_accessor :capacity

    def initialize (capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def capacity
        @capacity
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bikes.pop
    end

    def dock(bike)
        fail 'Docking station full' if full?
        @bikes << bike
    end
    
    private
    attr_accessor :bikes

    def empty?
        @bikes.empty?
    end

    def full?
        @bikes.count >= @capacity
    end


end