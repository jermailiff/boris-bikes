module Helpers
    module Station
        def bike_docked_broken
            bike_holder = DockingStation.new
            bike = double(:bike, broken?: true)
            bike_holder.dock bike
        end
    end
end

