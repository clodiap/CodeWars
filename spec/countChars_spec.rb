require_relative '../lib/countChars'

describe "count_chars" do
  it " count all the occuring characters(UTF-8) in string" do
    expect(count_chars("aba")).to eq({ "a" => 2, "b" => 1 })
    expect(count_chars("")).to eq({ })
  end

end




