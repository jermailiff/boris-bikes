require_relative 'bike'

class Van
    attr_accessor :bikes
    
    def initialize
        @bikes = []
    end

    def collect_bike(bike)
        fail 'Bike is not broken' if all_bike_working
        @bikes << bike
    end

    private

    def all_bike_working
        @bikes.all? {|bikes| bike.working? == true}
    end

end

# fix broken errors