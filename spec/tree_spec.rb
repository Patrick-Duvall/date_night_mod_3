require "spec_helper.rb"

describe BinarySearchtree do
  xit "can insert nodes" do
    tree = BinarySearchtree.new
    expect(tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)
    expect(tree.insert(16, "Johnny English")).to eq(1)
    expect(tree.insert(92, "Sharknado 3")).to eq(1)
    expect(tree.insert(50, "Hannibal Buress: Animal Furnace")).to eq(2)

  end

end
