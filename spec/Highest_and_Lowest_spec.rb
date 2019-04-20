require_relative '../lib/Highest_and_Lowest'

describe "high_and_low" do
  it " return the highest and lowest number" do
    expect(high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")).to eq("542 -214")
    expect(high_and_low("10 2 -2 -10")).to eq("10 -10")
    expect(high_and_low("1 -1")).to eq("1 -1")
    expect(high_and_low("1 1")).to eq("1 1")
    expect(high_and_low("-1 -1")).to eq("-1 -1")
    expect(high_and_low("1 -1 0")).to eq("1 -1")
    expect(high_and_low("1 1 0")).to eq("1 0")
    expect(high_and_low("-1 -1 0")).to eq("0 -1")
    expect(high_and_low("42")).to eq("42 42")
    expect(high_and_low("0 -1")).to eq("0 -1")
    expect(high_and_low("0 0")).to eq("0 0")
  end

end
