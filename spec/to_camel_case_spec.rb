require_relative '../lib/to_camel_case'

describe "to_camel_case" do
  it "turns a string into camelCase" do
    expect(to_camel_case("the-stealth-warrior")).to eq("theStealthWarrior")
    expect(to_camel_case("The_Stealth_Warrior")).to eq("TheStealthWarrior")
  end
end
