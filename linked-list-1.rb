class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node 
  end
end  # end of LinkedListNode

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

class Stack
  attr_reader :linked_list_node

  def initialize
    @linked_list_node = nil #linked_list_node is the stack
  end

  def push(value)
    @linked_list_node = LinkedListNode.new(value, @linked_list_node)
  end

end # end of Stack

def reverse_list(list)
  stack = Stack.new()

  #add the nodes in order to the stack (push)
  while list
    stack.push(list.value)
    list = list.next_node
  end

  stack.linked_list_node
end

node = LinkedListNode.new(37)
node = LinkedListNode.new(99, node)
node = LinkedListNode.new(12, node)

 puts "printing the original list"
 print_values(node)
 puts " "

 revlist = reverse_list(node)
 puts "printing the reversed list"
 print_values(revlist)