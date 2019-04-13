require_relative 'bike'

class Garage
    attr_accessor :bikes
    def initialize
        @bikes = []
    end

    def fix 
        @bikes.select {|bike|bike.broken == true}.each do |bike| 
            bike.broken = false
        end
    end

end
