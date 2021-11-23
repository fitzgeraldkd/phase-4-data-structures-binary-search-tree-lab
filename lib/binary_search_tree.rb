require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    node = @root
    return nil if node == nil
    while true
      if node.value == value
        return node
      elsif node.value > value && node.left != nil
        node = node.left
      elsif node.value < value && node.right != nil
        node = node.right
      else
        return nil
      end
    end
  end

  def insert(value)
    return @root = Node.new(value) if @root == nil
    node = @root
    while true
      if value < node.value
        return node.left = Node.new(value) if node.left == nil
        node = node.left
      elsif value > node.value
        return node.right = Node.new(value) if node.right == nil
        node = node.right
      else
        return node
      end
    end
  end

end 
