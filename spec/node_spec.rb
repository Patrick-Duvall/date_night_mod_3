require "spec_helper.rb"

describe Node do
  it "initializes with a value and title" do
    node = Node.new(4, 'Title')
    expect(node.value).to eq(4)
    expect(node.title).to eq('Title')
  end

  it "can insert another node" do
    node = Node.new(4, 'Title')
    node.insert(2, 'cats')
    expect(node.left.title).to eq('cats')
    node.insert(5, 'dogs')
    expect(node.right.title).to eq('dogs')
  end

end
