class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

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