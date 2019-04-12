require_relative 'bike'

class Garage
    attr_accessor :bikes
    def initialize
        @bikes = []
    end

    def fix 
        @bikes.select {|bike|bike.broken == true}.each do |bike| 
            p bike.broken
            bike.broken = false
        end
    end

end
