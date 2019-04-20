require_relative '../lib/geese'

describe "goose_filter" do
  it "returns a filtered array containing the same elements but with the 'geese' removed" do
    expect(goose_filter(["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"])).to eq(["Mallard", "Hook Bill", "Crested", "Blue Swedish"])
  end

end
