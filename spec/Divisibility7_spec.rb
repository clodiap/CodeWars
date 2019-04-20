require_relative '../lib/Divisibility7'

describe "seven" do
  it "The original number is divisible by 7 if and only if the last number obtained using this procedure is divisible by 7" do
    expect(seven(1603)).to eq([7,2])
    expect(seven(371)).to eq([35, 1])
    expect(seven(477557101)).to eq([28, 7])
  end

end




