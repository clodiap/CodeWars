require_relative '../lib/disemvowel'

describe "disemvowel" do
  it "It should works for basic tests." do
    expect(disemvowel("toto")).to eq("tt")
    expect(disemvowel("abracadabra")).to eq("brcdbr")
    expect(disemvowel("This website is for losers LOL!")).to eq("Ths wbst s fr lsrs LL!")
    expect(disemvowel("middle")).to eq("mddl")
  end
end
