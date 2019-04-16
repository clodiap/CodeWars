require_relative '../lib/CreditCardMask'

describe "maskify" do
  it "mask (with # all the characters of the string except the last 4" do
    expect(maskify('Skippy')  ).to eq('##ippy')
    expect(maskify('Nananananananananananananananana Batman!')).to eq('####################################man!')
    expect(maskify('4556364607935616')).to eq('############5616')
    expect(maskify('64607935616')).to eq('#######5616')
    expect(maskify('1')).to eq('1')
    expect(maskify('')).to eq('')
  end

end




