class BinarySearchtree
  attr_accessor :root_node
  def initialize
    @root_node = nil
  end
  def insert(value, title)
    #Seems to make tree, does not return depth
    if @root_node.nil?
      @root_node = Node.new(value, title)
      return 0
    end
    node = @root_node
    if value > node.value
      node = node.insert(value, title)
    else value <= node.value
      node = node.insert(value, title)
    end

    def include?(check)
      node = @root_node
      until node == nil
        if check > node.value
          node = node.right
        elsif check < node.value
          node = node.left
        else
          return true
        end
      end
      false
    end

    def max
      node = @root_node
      until node.right == nil
        node = node.right
      end
      {node.title => node.value}
    end

    def min
      node = @root_node
      until node.left == nil
        node = node.left
      end
      {node.title => node.value}
    end

  end
end
