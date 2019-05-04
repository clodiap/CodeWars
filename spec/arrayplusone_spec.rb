require_relative '../lib/arrayplusone'

describe "up_array" do
  it "return nil if array is empty" do
    expect(up_array([])).to be(nil)
  end

  it "return nil if value of array is negative" do
    expect(up_array([-1])).to be(nil)
    expect(up_array([6,9,-1])).to be(nil)
  end

  it "return nil if value of array is more than 1 digit" do
    expect(up_array([55])).to be(nil)
    expect(up_array([6,3,55])).to be(nil)
  end

  it "return an array that has 1 added to the value represented by the array" do
    expect(up_array([2,3,9])).to eq([2,4,0])
    expect(up_array([4,3,2,5])).to eq([4,3,2,6])
  end
end


