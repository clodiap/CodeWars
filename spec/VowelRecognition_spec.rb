require_relative '../lib/VowelRecognition'

describe "vowel_recognition" do
  it "returns a sum of vowels" do
    expect(vowel_recognition("bAceb")).to eq(16)
    expect(vowel_recognition("bbbb")).to eq(0)
    expect(vowel_recognition("baceb")).to eq(16)
    expect(vowel_recognition("aeiou")).to eq(35)
    expect(vowel_recognition("aeiouAEIOU")).to eq(220)
  end

end
