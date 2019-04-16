require_relative '../lib/abc'

describe "find_a_b" do
  it "return the first pair of number in an array equal to number" do
    expect(find_a_b([1,2,3,4,5,6],6)).to eq([1,6])
    expect(find_a_b([1,2,3],7)).to be(nil)
    expect(find_a_b([1,2,3],6)).to eq([2,3])
    expect(find_a_b([0,0,2],4)).to be(nil)
  end

  it "does not return the n pair" do
    expect(find_a_b([1,2,3,4,5,6],6)).not_to eq([2,3])
  end
end


