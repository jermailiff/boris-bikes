require_relative 'docking_station.rb'
require_relative 'bike.rb'



station = DockingStation.new
puts station.capacity

bike1 = Bike.new
bike2 = Bike.new

bike1.report_broken

station.dock bike1

station.release_broken_bike

van = Van.new

van.collect_bike
van.drop_off_bike

garage = Garage.new

garage.collect_bike
garage.fix_bike
garage.release_bike

van.collect_bike
van.drop_off_bike

station.dock bike



