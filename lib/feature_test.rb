require_relative 'docking_station.rb'
require_relative 'bike.rb'
require_relative 'van.rb'



station = DockingStation.new

bike = Bike.new
bike1 = Bike.new
bike2 = Bike.new

bike.report_broken
bike1.report_broken
bike2.report_broken

station.dock bike 
station.dock bike1
station.dock bike2

# station.release_broken_bike

van = Van.new

van.accept_broken_only(station)

puts station.bikes
van.bikes

# van.collect station

# van.drop_off bike

# garage = Garage.new

# garage.collect_bike
# garage.fix_bike
# garage.release_bike

# van.collect_bike
# van.drop_off_bike

# station.dock bike



