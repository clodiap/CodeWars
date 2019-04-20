require_relative '../lib/highestProfit'

describe "min_max" do
  it " return the highest and lowest number" do
    expect(min_max([1,2,3,4,5])).to eq([1,5])
    expect(min_max([2334454,5])).to eq([5, 2334454])

  end

end
