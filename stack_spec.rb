require_relative 'stack.rb'

describe "Push" do
  it "Adds 14 to the beginning of the stack" do
    stack = Stack.new
    input = stack.push(14)

    output = LinkedListNode.new(14)

    expect(input).to eq(output)

  end
end