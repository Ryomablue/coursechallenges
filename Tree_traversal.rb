class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end
end

  def depth_search(node, value)
    puts node.payload

    if node.payload == value
      return node
    end

    # Loop through the branches and leaves to find the eleventh_node
    node.children.each do |child|
      result = depth_search(child, value)
      return result if result
    end
  nil
  end

  class Queue
    def initialize
        @queue = []
    end

    def enqueue(item)
        @queue.push(item)
    end

    def dequeue
        @queue.shift
    end

    def breadth_first(node, value)
      
      node.children.each do |child|
        enqueue(child)
        return "value found = #{value}" if child.payload == value
      end
      current_node = dequeue
      breadth_first(current_node, value)
    end
end



# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])

node = depth_search(trunk, 11)
if node
  puts "found #{node.payload}"
end

queue = Queue.new
puts queue.breadth_first(trunk, 11)