require_relative '../lib/mexicanWave'

describe "mexican_wave" do
  it "turns a string into a Mexican Wave" do
    expect(mexican_wave("hello")).to eq(["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    expect(mexican_wave("two words")).to eq(["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
  end

  it "returns un empty array if the string is empty" do
    expect(mexican_wave("")).to eq([])
  end
end


