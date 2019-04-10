require_relative 'docking_station.rb'
require_relative 'bike.rb'
require_relative 'van.rb'
require_relative 'garage.rb'



station = DockingStation.new

# bike = Bike.new
# bike1 = Bike.new
bike2 = Bike.new

# bike.report_broken
# bike1.report_broken
bike2.report_broken

# station.dock bike 
# station.dock bike1
station.dock bike2

van = Van.new

station.bikes

van.collect station

garage = Garage.new

van.drop_off garage
van.bikes
garage.bikes

# garage.fix_bike

# van.collect bike
# van.drop_off station



