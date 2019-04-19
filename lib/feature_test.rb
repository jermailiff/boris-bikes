require_relative 'docking_station.rb'
require_relative 'bike.rb'
require_relative 'van.rb'
require_relative 'garage.rb'
require_relative 'bike_container'



station = DockingStation.new(50)

bike1 = Bike.new
bike2 = Bike.new

bike1.report_broken

station.dock bike1
station.dock bike2

bike1
bike2 

station.release_broken_bike 

van = Van.new (50)
garage = Garage.new

van.load bike1
van.unload bike1

garage.accept bike1
garage.fix_bikes
garage.release_working_bike

van.load bike1



van.unload bike1

station.dock bike1



