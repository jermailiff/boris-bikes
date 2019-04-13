require_relative 'bike'

class Van
    attr_accessor :bikes, :capacity
    
    DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def collect(bike_holder)
        fail 'Bikes working at #{bike_holder}' if all_bikes_working(bike_holder)
        fail 'Van is full' if full?
        accept_broken_only(bike_holder)
    end

    def drop_off(bike_holder)
        @bikes.each do |bike|
            @bikes.pop
            bike_holder.bikes << bike
        end
    end

    private 

    def all_bikes_working(bike_holder)
        bike_holder.bikes.all?{|bike| bike.broken? == false}
    end

    def accept_broken_only(bike_holder)
        bike_holder.bikes.select {|bike|bike.broken? == true}.each do |bike|
            bike_holder.bikes.pop
            @bikes << bike
        end
    end

    def full?
        @bikes.count >= @capacity
    end

end
