require_relative '../lib/arithmetic'

describe "arithmetic" do
  it "add numbers" do
    expect(arithmetic(5, 2, "add")).to eq(5 + 2)
    expect(arithmetic(0, 2, "add")).to eq(0 + 2)
  end

  it "substract numbers" do
    expect(arithmetic(5, 2, "subtract")).to eq(5 - 2)
    expect(arithmetic(1, 2, "subtract")).to eq(1 - 2)
  end

  it "multiply numbers" do
    expect(arithmetic(5, 2, "multiply")).to eq(5 * 2)
    expect(arithmetic(256, 2, "multiply")).to eq(256 * 2)
  end

  it "divise numbers" do
    expect(arithmetic(5, 2, "divide")).to eq(5 / 2)
    expect(arithmetic(10, 2, "divide")).to eq(10 / 2)
  end

end


