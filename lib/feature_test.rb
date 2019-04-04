require_relative 'docking_station.rb'
require_relative 'bike.rb'
require_relative 'van.rb'



station = DockingStation.new

bike = Bike.new

bike.report_broken

station.dock bike

station.release_broken_bike

van = Van.new

van.collect bike

# van.drop_off_bike

# garage = Garage.new

# garage.collect_bike
# garage.fix_bike
# garage.release_bike

# van.collect_bike
# van.drop_off_bike

# station.dock bike



