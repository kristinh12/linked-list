require_relative 'linked-list-node.rb'
# This method does not work, does it need to be in a different file, or am I calling it incorrectly?
def linkedlist(array)
  list = LinkedListNode.new(array.last)
  array.pop
  i = array.length
  i.times do
    list = LinkedListNode.new(array.last, list)
    array.pop
  end
end

describe "Linked List" do

  it "forms the list 14-nil" do
    input = linkedlist([14])
    
    output = [14, nil]

    expect(input.value).to eq(output[0])
    expect(input.next_node).to eq(output[1])

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
