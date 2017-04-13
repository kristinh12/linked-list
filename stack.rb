require_relative 'linked-list-node.rb'

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, self.data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
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