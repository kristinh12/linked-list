require_relative 'stack.rb'

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  # lists each value of the linked list in order.
  def print_values(list_node)
	  if list_node
	    print "#{list_node.value} --> "
	    print_values(list_node.next_node)
	  else
	    print "nil\n"
	    return
	  end
  end

end


def reverse_list(list)
    
  reverse = LinkedListNode.new(list.value)
  # Creates a reversed list by iterating through the original list, 
  # and adding the values to the front of a new list.
  while list.next_node != nil
    reverse = LinkedListNode.new(list.next_node.value, reverse)
    list = list.next_node
  end

  return reverse
end

# This also reverses a list, but does so by building a stack.
def reverse(list)
  reverse = Stack.new
  while list
    reverse.push(list.value)
    list = list.next_node
  end

  return reverse.data
end

# Checks whether a linked list is infinite because the hare will iterate through the list twice as fast. 
# If the hare and tortoise ever end up on the same node, there is a loop in the list.
def infinite(list)
  tortoise = list
  hare = list

  while true
    return false if hare == nil
    hare = hare.next_node
    return false if hare == nil
    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare.value == tortoise.value
  end
end

