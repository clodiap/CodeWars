require_relative '../lib/parity_outlier'

describe "find_outlier" do
  it "It should works for basic tests." do
    expect(find_outlier([0, 1, 2])).to eq(1)
    expect(find_outlier([1, 2, 3])).to eq(2)
    expect(find_outlier([2,6,8,10,3])).to eq(3)
    expect(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])).to eq(11)
    expect(find_outlier([160, 3, 1719, 19, 11, 13, -21])).to eq(160)
  end
end
