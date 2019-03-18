require_relative 'docking_station.rb'
require_relative 'bike.rb'



station = DockingStation.new
puts station.capacity

bike1 = Bike.new

bike1.report_broken

puts station.dock bike1

station.release_bike

# fix broken so it shows as a property





