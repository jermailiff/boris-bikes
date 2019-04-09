class Garage
    attr_accessor :bikes
    def initialize
        @bikes = []
    end

    def dock (bike)
        @bikes << bike
    end
end
