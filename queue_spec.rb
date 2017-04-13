require_relative 'queue.rb'

describe "enqueue" do
  it "adds 12 to the end of the queue" do
    input = Queue.new
    input.enqueue(12)
    expect(input.dequeue).to eq(12)
    expect(input.dequeue).to eq(nil)
  end

  it "adds 12 and 13 to the queue" do
    input = Queue.new
    input.enqueue(12)
    input.enqueue(13)

    expect(input.dequeue).to eq(12)
    expect(input.dequeue).to eq(13)
    expect(input.dequeue).to eq(nil)
  end
end