require_relative '../lib/not_all'

describe "remove" do
  it "It should works for basic tests." do
    expect(remove('this is a string',{'t'=>1, 'i'=>2})).to eq('hs s a string')
    expect(remove('hello world',{'x'=>5, 'i'=>2})).to eq('hello world')
    expect(remove('apples and bananas',{'a'=>50, 'n'=>1})).to eq('pples d bnns')
  end
end
