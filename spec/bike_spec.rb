require "bike"
describe Bike do
  it {is_expected.to respond_to :working?}
  it "Breaks the bike and when checked to see if works returns false" do
    bike = Bike.new
    bike.broken
    expect(bike.working?).to eq false
  end
end
