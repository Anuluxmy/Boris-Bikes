require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it "releases a bike if bike available or gives no bikes" do
    station = DockingStation.new(1)
    station.release_bike
    expect { station.release_bike }.to raise_error "No bikes available"
  end

  it "gives error when the the dock is full" do
    station = DockingStation.new
    expect { station.dock Bike.new }.to raise_error "Docking station full"
  end

  it "can get a bike and its working" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end

  it "can make docking possible" do
    expect(subject).to respond_to :dock
  end

 it "shouldn't let to dock an extra bike if there is more bike than capacity" do
   station = DockingStation.new(10)
   expect { station.dock Bike.new }. to raise_error "Docking station full"
 end

 it "Should show the capacity of the station" do
   station = DockingStation.new
   expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
 end

 it "Should not give out a broken bike" do
   station = DockingStation.new
   bike = station.release_bike
   bike.broken
   station.dock(bike)
   expect(station.release_bike.working?).to eq true
 end
end
