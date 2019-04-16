require_relative '../lib/BuildTower'

describe "tower" do
  it "draws a tower" do
    expect(tower(3)).to eq([
  '  *  ',
  ' *** ',
  '*****'
])
    expect(tower(6)).to eq([
  '     *     ',
  '    ***    ',
  '   *****   ',
  '  *******  ',
  ' ********* ',
  '***********'
])
  end

end


