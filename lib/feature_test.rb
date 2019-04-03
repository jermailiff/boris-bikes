require_relative 'docking_station.rb'
require_relative 'bike.rb'



station = DockingStation.new
puts station.capacity

bike1 = Bike.new
bike2 = Bike.new

bike1.report_broken

station.dock bike1
station.dock bike2

station.release_bike
station.release_bike





