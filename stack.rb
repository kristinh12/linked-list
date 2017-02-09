class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode(value, self.data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        @value = self.data.value
        @data = self.data.next_node
        return @value
    end

end

firststack = Stack.new
firststack.push(5)