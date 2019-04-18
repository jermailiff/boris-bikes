require_relative 'docking_station.rb'
require_relative 'bike.rb'
require_relative 'van.rb'
require_relative 'garage.rb'
require_relative 'bike_container'



station(50) = DockingStation.new

bike = Bike.new
bike1 = Bike.new
bike2 = Bike.new

bike.report_broken
bike1.report_broken
bike2.report_broken

station.dock bike 
station.dock bike1
station.dock bike2

station.release_bike

station.release_bike
 

van = Van.new (50)

# station.bikes

# van.collect_broken_bikes station

# garage = Garage.new

# van.drop_off garage
# van.bikes

# garage.bikes
# garage.fix
# garage.bikes

# van.collect_working_bikes garage
# van.drop_off station

# garage.bikes
# station.bikes

# station.release_bike





