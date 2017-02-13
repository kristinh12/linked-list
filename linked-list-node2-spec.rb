require_relative 'linked-list-node.rb'
# This method does not work, do I need to build a class and just add this method to it?
def linkedlist(array)
  list = LinkedListNode.new(array.last)
  array.pop
  i = array.length
  i.times do
    list = LinkedListNode.new(array.last, list)
    array.pop
  end
  return list
end

describe "Linked List" do

  it "forms the list 14-nil" do
    input = LinkedListNode.new(14)

    expect(input.value).to eq(14)
    expect(input.next_node).to eq(nil)

  end

  it "forms the list 13-14-nil" do
    input = linkedlist([13, 14])

    output = [13, 14, nil]

    i = 0
    until input.next_node == nil
      expect(input.value).to eq(output[i])
      i += 1
      input = input.next_node
    end
  end
end

describe "Reverse Linked List" do

  it "reverses the list 13-14-nil" do
    input = linkedlist([13, 14]).reverse

    output = linkedlist([14, 13])

    expect(input.value).to eq(output.value)
    expect(input.next_node.value).to eq(output.next_node.value)
    expect(input.next_node.next_node).to eq(output.next_node.next_node)
  end
end
