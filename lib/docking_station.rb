require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20
def initialize(capacity = DEFAULT_CAPACITY)
  @capacity = capacity
  @bikes = []
  @capacity.times {@bikes << Bike.new}

end
def release_bike
  empty?
  @bikes.pop
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
