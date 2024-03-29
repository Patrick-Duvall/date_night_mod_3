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
    tree = BinarySearchtree.new
    expect(tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)
    expect(tree.insert(16, "Johnny English")).to eq(1)
    expect(tree.insert(92, "Sharknado 3")).to eq(1)
    expect(tree.insert(50, "Hannibal Buress: Animal Furnace")).to eq(2)
    expect(tree.root_node.title).to eq("Bill & Ted's Excellent Adventure")
    expect(tree.root_node.right.title).to eq("Sharknado 3")
    expect(tree.root_node.left.title).to eq("Johnny English")
    expect(tree.root_node.left.right.title).to eq("Hannibal Buress: Animal Furnace")
  end

  it "can check for a value on the tree" do
    expect(@tree.include?(50)).to eq(true)
    expect(@tree.include?(99)).to eq(false)
  end

  it 'can find a max score' do
    expect(@tree.max).to eq({"Sharknado 3" => 92})
  end

  it "can find a min score" do
    @tree.insert(15, "10 things")
    expect(@tree.min).to eq({"10 things" => 15})
  end

  it "can find the depth of a node" do
    expect(@tree.depth_of(92)).to eq(1)
    expect(@tree.depth_of(50)).to eq(2)
    expect(@tree.depth_of(87)).to eq(nil)
  end

  it "can sort movies" do
    retval = [{"Johnny English"=>16},
              {"Hannibal Buress: Animal Furnace"=>50},
              {"Bill & Ted's Excellent Adventure"=>61},
              {"Sharknado 3"=>92}]
    expect(@tree.sort).to eq(retval)
  end

end
