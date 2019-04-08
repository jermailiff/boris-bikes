require_relative 'bike'

class Van
    attr_accessor :bikes, :capacity
    
    DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def collect(station)
        fail 'Bikes working at station' if all_bikes_working(station)
        fail 'Van is full' if full?
        accept_broken_only(station)
    end

    private 

    def all_bikes_working(station)
        station.bikes.all?{|bike| bike.broken? == false}
    end

    def accept_broken_only(station)
        station.bikes.select {|bike|bike.broken == true}.each do |bike|
            station.bikes.pop
            @bikes << bike
        end
    end

    def full?
        @bikes.count >= @capacity
    end

end

