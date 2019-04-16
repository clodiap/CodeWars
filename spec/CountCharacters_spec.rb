require_relative '../lib/CountCharacters'

describe "ordered_count" do
  it "Count the number of occurrences of each character and return it as a list of tuples in order of appearance" do
    expect(ordered_count("abracadabra")).to eq([['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]])
    expect(ordered_count("aaaabbcccccccccdd")).to eq([['a', 4], ['b', 2], ['c', 9], ['d', 2]])
    expect(ordered_count("claudia")).to eq([['c', 1], ['l', 1], ['a', 2], ['u', 1], ['d', 1], ['i', 1]])
  end

end




