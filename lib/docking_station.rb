require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity
def initialize(capacity = DEFAULT_CAPACITY)
  @capacity = capacity
  @bikes = []
  @capacity.times {@bikes << Bike.new}

end
def release_bike
  empty?
  @working_bikes = @bikes.select {|bike| bike.working? == true}
  @broken_bikes = @bikes.select {|bike| bike.working? == false}
  out_going_bike = @working_bikes.pop
  @bikes = @working_bikes + @broken_bikes
  out_going_bike
end

def dock(bike)
    full?
    @bikes << bike
  end

  private def full?
    fail 'Docking station full' if @bikes.count >= @capacity
  end

  private def empty?
  fail 'No bikes available' if @bikes.empty?
  end



end
