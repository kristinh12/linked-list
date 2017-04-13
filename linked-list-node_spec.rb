require_relative 'linked-list-node.rb'

describe "Linked List" do

  it "forms the list 14-nil" do
    input = LinkedListNode.new(14)
    
    output = [14, nil]

    expect(input.value).to eq(output[0])
    expect(input.next_node).to eq(output[1])

  end

  it "forms the list 13-14-nil" do
    node1 = LinkedListNode.new(14)
    input = LinkedListNode.new(13, node1)

    output = [13, 14, nil]

    expect(input.value).to eq(output[0])
    expect(input.next_node.value).to eq(output[1])
    expect(input.next_node.next_node).to eq(output[2])
  end

end
