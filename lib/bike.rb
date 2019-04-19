class Bike

    attr_accessor :broken

    def initialize
        @broken = false
    end

    def working?
        @broken = false
    end

    def report_broken
        @broken = true
    end

    def broken?
        @broken
    end

    def fix
        @broken = false
    end

end