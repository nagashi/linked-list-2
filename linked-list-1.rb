class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def intialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    return print "nil\n" if @data.nil?
    
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end


def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)  # Starting at node3
    list = list.next_node
  end

  stack.data
end

def print_values(list_node)
  return print "nil\n" if list_node.nil?
 
  print "#{list_node.value} --> "
  print_values(list_node.next_node)
end

node1 = LinkedListNode.new(28)
node2 = LinkedListNode.new(62, node1)
node3 = LinkedListNode.new(11, node2)

print_values(node3)
puts "------------------------"
revlist = reverse_list(node3)
print_values(revlist)