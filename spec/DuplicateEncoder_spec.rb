require_relative '../lib/DuplicateEncoder'

describe "duplicate_encoder" do
  it "convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string." do
    expect(duplicate_encoder("din")).to eq("(((")
    expect(duplicate_encoder("recede")).to eq("()()()")
    expect(duplicate_encoder("Success")).to eq(")())())")
    expect(duplicate_encoder("(( @")).to eq("))((")
  end

end
