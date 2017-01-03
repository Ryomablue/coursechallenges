class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left=nil, right=nil)
    @payload = payload
    @left = left
    @right = right
  end

end

def btree_sort(unsorted)
  first_node = unsorted.first
  @trunk = BinaryTree.new(first_node)
  prev_node = @trunk
  unsorted.each do |number|
    build_tree(number, @trunk)
  end

  @sorted = []
  ordered_traversal
end
    #build new array by flatten the tree
    # do a DFS algorithm, modified to deal with:
    #   left-hand side
    #   the node itself
    #   right-hand side
def build_tree (number, trunk)
  prev_node = trunk
  while prev_node != nil
    if number < prev_node.payload && prev_node.left == nil
      prev_node.left = BinaryTree.new(number)
      prev_node = @trunk
    elsif number > prev_node.payload && prev_node.right == nil
      prev_node.right = BinaryTree.new(number)
      prev_node = @trunk
    elsif number < prev_node.payload && prev_node.left != nil
      prev_node = prev_node.left
    elsif number > prev_node.payload && prev_node.right != nil
      prev_node = prev_node.right
    else
      return
    end
      # begin
      # 1) loop through rest array, for each element
      # 2)for each element, find location where element should keep looking through children until you get to point where if you were to insert
      #   the element, you'd be replacing a 'nil' child
      #   2b) put it at the location where it belongs. Therefore modding tree itself.
      #       build a btree containing the current element, two nil children and putting
      #       into the tree itself.
      # end
  end
end

def ordered_traversal(node = @trunk)
  return @sorted if (node == nil)
  ordered_traversal(node.left)
  @sorted.push(node.payload)
  ordered_traversal(node.right)
end


unsorted = [7, 4, 9, 1, 6, 14, 10]
sorted = btree_sort(unsorted)
puts "#{sorted}"