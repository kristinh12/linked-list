require_relative 'linked-list-node.rb'


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
    input = reverse_list(linkedlist([13, 14]))
    output = linkedlist([14, 13])

    expect(input.value).to eq(output.value)
    expect(input.next_node.value).to eq(output.next_node.value)
    expect(input.next_node.next_node).to eq(output.next_node.next_node)
  end

  it "reverses the list 12-13-14-nil" do
    input = reverse_list(linkedlist([12, 13, 14]))

    output = linkedlist([14, 13, 12])

    while input
      expect(input.value).to eq(output.value)
      input = input.next_node
      output = output.next_node
    end
  end
end

describe "Reverse Linked List with a Stack" do
  it "reverses the list 13-14-nil" do
    input = reverse(linkedlist([13, 14]))
    output = linkedlist([14, 13])

    expect(input.value).to eq(output.value)
    expect(input.next_node.value).to eq(output.next_node.value)
    expect(input.next_node.next_node).to eq(output.next_node.next_node)
  end

  it "reverses the list 12-13-14-nil" do
    input = reverse(linkedlist([12, 13, 14]))

    output = linkedlist([14, 13, 12])

    while input
      expect(input.value).to eq(output.value)
      input = input.next_node
      output = output.next_node
    end
  end
end

describe "Tests for infinite lists" do
  it "returns true for an infinite list" do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    node1.next_node = node3

    input = infinite(node3)

    expect(input).to eq(true)
  end

  it "returns false for the list 12-13-14-nil" do
    input = infinite(linkedlist([12, 13, 14]))

    expect(input).to eq(false)
  end
end
