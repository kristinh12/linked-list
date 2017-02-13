require_relative 'linked-list-node.rb'

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    # Might not be able to use the LinkedListNode class for this, because then I can't use the method push since it is now a linked list.
    def push(value)
        @data = LinkedListNode.new(value, self.data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    # I highly doubt this works, I have not tested it yet.
    def pop
        return nil if self.data == nil
        value = self.data.value
        @data = self.data.next_node
        return value
    end

    def ==(other_stack)
        @data == other_stack.data
    end

end