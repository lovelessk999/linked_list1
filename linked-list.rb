#------------------Class Linked List------------------#

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#-----------------Class Stack Defined-----------------#

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE

    end

end

# ---------------Reverse List Function-------------- #

def reverse_list(list)
  
    stack = Stack.new

    while list
        
        stack.push(list.value)
        list = list.next_node
    end

    # ADD CODE HERE
    stack.data
end

#------------------Print Function-------------------#

def print_nodes(listnode)

  print "#{listnode.value} --> "

  if listnode.next_node.nil?

    print "nil\n"

    return

  else

    print_nodes(listnode.next_node)

  end

end

# -------------------Let's do it------------------ #

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_nodes(node3)

puts " "

revlist = reverse_list(node3)

print_nodes(revlist)