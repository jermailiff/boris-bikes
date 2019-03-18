require_relative 'docking_station.rb'
require_relative 'bike.rb'



station = DockingStation.new
puts station.capacity

bike = Bike.new

puts bike.report_broken
puts bike.broken?
# fix broken so it shows as a property
puts station.dock bike





