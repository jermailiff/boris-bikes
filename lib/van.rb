require_relative 'bike'

class Van
    attr_accessor :bikes, :capacity
    
    DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def collect(bike)
        fail 'Cannot collect working bikes' unless broken(bike)
        fail 'Van is full' if full?
        @bikes << bike
    end        

    private

    def broken(bike)
        bike.broken? == true
    end

    def full?
        @bikes.count >= @capacity
    end

end
