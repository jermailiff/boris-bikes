class Bike

    attr_accessor :broken

    def initialize
        @broken = false
    end

    def working?
        fail 'Bike is broken' if @broken==true
        true
    end

    def report_broken
        @broken = true
    end

    def broken?
        @broken
    end

end