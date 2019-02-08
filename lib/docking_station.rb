require_relative "bike"

class DockingStation
def initialize
@bikes = []
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
    fail 'Docking station full' if @bikes.count >= 20
  end

  private def empty?
  fail 'No bikes available' if @bikes.empty?
  end

end
