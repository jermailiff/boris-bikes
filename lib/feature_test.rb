require_relative 'docking_station.rb'
require_relative 'bike.rb'



station = DockingStation.new
puts station.capacity

st = DockingStation.new(40)
puts st.capacity
