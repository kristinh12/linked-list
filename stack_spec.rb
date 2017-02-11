require_relative 'stack.rb'

describe "Push" do
  it "Adds 14 to the beginning of the stack" do
    input = Stack.new
    input = input.push(14)

    output = LinkedListNode.new(14)

    expect(input.value).to eq(output.value)
    expect(input.next_node).to eq(output.next_node)

  end

  it "Adds 13 and 14 to the beginning of the stack" do
    input = Stack.new
    input = input.push(14)
    input = input.push(13)

    output = LinkedListNode.new(14)
    output = LinkedListNode.new(13, output)

    until input.next_node == nil
      expect(input.value).to eq(output.value)
      input = input.next_node
      output = output.next_node
    end

  end
end