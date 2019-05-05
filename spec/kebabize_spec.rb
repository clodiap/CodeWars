require_relative '../lib/kebabize'

describe "kebabize" do
  it "return the first pair of number in an array equal to number" do
    expect(kebabize('myCamelCasedString')).to eq('my-camel-cased-string')
    expect(kebabize('myCamelHas3Humps')).to eq('my-camel-has-humps')
  end

end


