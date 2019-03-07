class Person
    def initialise(name, age)
        @name = name
        @age = age
    end

    def name
        @name
    end

    def age
        @age
    end
end

class DockingStation
    def release_bike
        puts "Bike released"
    end 
end

class Bike 
    attr_accessor :bike_colour

    def initialise (colour)
        @bike_colour = colour
    end

    def working?
        puts [true, false].sample
    end
end




    