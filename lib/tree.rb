class BinarySearchtree
  attr_accessor :root_node
  def initialize
    @root_node = nil
  end
  def insert(value, title)
    node = @root_node
    depth = 0
    if @root_node.nil?
      @root_node = Node.new(value, title)
    elsif value > node.value
      node.right = Node.new(value, title)
      depth += 1
    elsif value <= node.value
      node.left = Node.new(value, title)
      depth += 1
    end
    depth
  end
end
