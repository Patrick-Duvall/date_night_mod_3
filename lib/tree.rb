class BinarySearchtree
  attr_accessor :root_node
  def initialize
    @root_node = nil
  end
  def insert(node, value, title)
    if @root_node.nil?
      @root_node = Node.new(value, title)
    elsif value > @rootnode.value
      @root_node.right = Node.new(value, title)
    elsif value < @rootnode.value
      @root_node.left = Node.new(value, title)
    end
  end
end
