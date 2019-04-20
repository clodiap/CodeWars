require_relative '../lib/divisors'

describe "divisors" do
  it "Find the number of divisors of a positive integer n" do
    expect(divisors(4)).to eq(3)
    expect(divisors(5)).to eq(2)
    expect(divisors(12)).to eq(6)
    expect(divisors(30)).to eq(8)
  end

end
