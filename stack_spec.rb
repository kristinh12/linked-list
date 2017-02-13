require_relative 'stack.rb'

describe "Push" do
  it "Adds 14 to the beginning of the stack" do
    input = Stack.new
    input.push(14)

    expect(input.pop).to eq(14)
    expect(input.pop).to eq(nil)

  end

  it "Adds 13 and 14 to the beginning of the stack" do
    input = Stack.new
    input.push(14)
    input.push(13)

    expect(input.pop).to eq(13)
    expect(input.pop).to eq(14)
    expect(input.pop).to eq(nil)

  end
end