module BikeContainer
    DEFAULT_CAPCITY = 20

    attr_reader :capacity

    def initialize(capacity=DEFAULT_CAPCITY)
        @capcity = DEFAULT_CAPCITY
    end
end
