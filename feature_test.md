require './lib/docking_station.rb'

station = DockingStation.new
bike = station.release_bike
bike.broken
station.dock(bike)
bike2 = station.release_bike
bike2.working?
