require_relative 'bike'

class Van
    attr_accessor :bikes, :capacity
    
    DEFAULT_CAPACITY = 20

    def initialize
        @bikes = []
        @capacity = DEFAULT_CAPACITY
    end

    def collect_broken_bikes(bike_holder)
        fail 'Bikes working at #{bike_holder}' if all_bikes_working(bike_holder)
        fail 'Van is full' if full?
        load_broken_bikes(bike_holder)
    end

    def collect_working_bikes(bike_holder)
        fail 'Bikes are broken at #{bike_holder}' if all_bikes_broken(bike_holder)
        fail 'Van is full' if full?
        load_fixed_bikes(bike_holder)
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

    def all_bikes_broken(bike_holder)
        bike_holder.bikes.all?{|bike| bike.broken? == true}
    end

    def load_broken_bikes(bike_holder)
        bike_holder.bikes.select {|bike|bike.broken? == true}.each do |bike|
            bike_holder.bikes.pop
            @bikes << bike
        end
    end

    def load_fixed_bikes(bike_holder)
        bike_holder.bikes.select {|bike|bike.broken? == false}.each do |bike|
            bike_holder.bikes.pop
            @bikes << bike
        end
    end

    def full?
        @bikes.count >= @capacity
    end

end

# why is my variable not printing in the error string
# find out from Erika whether it matters if there are no gaurds for dropping bikes off as vans can do what they like
# how do I amend the collect method now for working bikes directly from garages without making other methods and altering code significantly