require "spec_helper.rb"

describe BinarySearchtree do
  before :each do
    @tree = BinarySearchtree.new
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end
  it "can insert nodes" do
    expect(@tree.root_node.title).to eq("Bill & Ted's Excellent Adventure")
    expect(@tree.root_node.right.title).to eq("Sharknado 3")
    expect(@tree.root_node.left.title).to eq("Johnny English")
    expect(@tree.root_node.left.right.title).to eq("Hannibal Buress: Animal Furnace")
  end

  it "can check for a value on the tree" do
    expect(@tree.include?(50)).to eq(true)
    expect(@tree.include?(99)).to eq(false)
  end

end
