require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe "#release_bike" do
    it "releases a bike if bike available or gives no bikes" do
      expect {subject.release_bike}.to raise_error "No bikes available"
  end
end

  it "can get a bike and its working" do
      bike = Bike.new
      subject.dock(bike)
      expect(bike.working?).to eq true
    end

  it "can make docking possible" do
    expect(subject).to respond_to :dock
  end

   it "can get a bike and dock" do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bike).to eq bike

   end
  end
