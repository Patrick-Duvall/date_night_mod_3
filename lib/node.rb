class Node
  attr_reader :value, :title
  attr_accessor :left, :right
  def initialize(rating, title)
    @value = rating
    @title = title
    @left = nil
    @right = nil
  end
  def insert(value,title)
    if value <= @value
      @left.nil? ? @left = Node.new( value, title ) : @left.insert( value, title )
    elsif value > @value
      @right.nil? ? @right = Node.new( value, title ) : @right.insert( value, title )
    end
  end
end
