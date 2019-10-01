require_relative '../lib/diff_big_two'

describe "diff_big_2" do
  it "It should works for basic tests." do
    expect(diff_big_2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq(1)
    expect(diff_big_2([9, 99, 999])).to eq(900)
    expect(diff_big_2([999, 99, 9])).to eq(900)
    expect(diff_big_2([100, 100])).to eq(0)
    expect(diff_big_2([1, 2, 10, 3, 4, 5, 6, 7, 8, 9])).to eq(1)
    expect(diff_big_2([-2,100])).to eq(102)
    expect(diff_big_2([5,5])).to eq(0)
  end
end
