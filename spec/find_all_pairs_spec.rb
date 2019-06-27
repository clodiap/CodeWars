require_relative '../lib/find_all_pairs'

describe "pairs" do
  it "count all pairs in that array and return their count" do
    expect(pairs([1, 2, 5, 6, 5, 2])).to eq(2)
    expect(pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])).to eq(4)
    expect(pairs([0, 0, 0, 0, 0, 0, 0])).to eq(3)
    expect(pairs([1000, 1000])).to eq(1)
    expect(pairs([])).to eq(0)
    expect(pairs([54])).to eq(0)
  end

end


