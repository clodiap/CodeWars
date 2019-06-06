require_relative '../lib/PermutationsAndDotProducts'

describe "min_dot" do
  it "should work for the empty array" do
    expect(min_dot([], [])).to eq(0)
  end
  it "should work for the examples" do
    expect(min_dot([1,2,3,4,5], [0,1,1,1,0])).to eq(6)
    expect(min_dot([1,2,3,4,5], [0,0,1,1,-4])).to eq(-17)
    expect(min_dot([1,3,5], [4,-2,1])).to eq(-3)
  end
end
