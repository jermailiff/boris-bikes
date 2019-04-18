module BikeContainer
    DEFAULT_CAPACITY = 20

    attr_reader :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def add_bike(bike)
        raise "#{self.class.name} full" if full?
        bikes << bike
    end

    def remove_bike
        raise "#{self.class.name} empty" if empty?
        bikes.pop
    end

    def empty?
        bikes.empty?
    end

    def full?
        bikes.count >= capacity
    end

    private

    attr_reader :bikes
end

# why would you make attr_reader private?
# what is the difference between raise and fail?
# why do I not need to use @ when referring to my collection in other methods?