require_relative 'linked-list-node.rb'

class Queue
  attr_reader :data

  def initialize
    @data = nil
  end


  def enqueue(value)
    if @data == nil
      @data = value
    else
      @data = LinkedListNode.new(self.data, value)
    end
  end

  def dequeue
    if @data.is_a?(LinkedListNode)
      first = @data.value
      @data = @data.next_node
      return first
    else
      first = @data
      @data = nil
      return first
    end
  end

end