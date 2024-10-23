# Finish writing the test to make the assertion pass.
# Use the min, max, min_by, and max_by methods.

describe "#min/#max/#min_by/#max_by" do 
  it "returns the smallest value in the array" do 
    numbers = [8, 23, 7, 29, 9, 10]
    smallest_number = numbers.min
    p smallest_number
    expect(smallest_number).to eq(7)
  end

  it "returns the largest value in the array" do 
    numbers = [8, 23, 7, 29, 9, 10]
    largest_number = numbers.max
    p largest_number
    expect(largest_number).to eq(29)
  end

  it "returns the longest name" do 
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]
    longest_name = names.max_by do |name|
      name.length
    end
    p longest_name
    expect(longest_name).to eq("Michaelangelo")
  end
  
  it "returns the shortest name" do 
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]
    shortest_name = names.min_by do |name|
      name.length
    end
    p shortest_name
    expect(shortest_name).to eq("Raphael")
  end

  it "returns the name with the lowest associated value" do 
    people = [
      ["Sofie", 4],
      ["Scarlett", 9],
      ["Stella", 8]
    ]
    lowest_valued_name = people.min_by do |person|
      person[1]
    end.first
    p lowest_valued_name
    expect(lowest_valued_name).to eq("Sofie")
  end

  it "returns the name with the highest associated value" do 
    people = [
      ["Sofie", 4],
      ["Scarlett", 9],
      ["Stella", 8]
    ]

    highest_valued_name = people.max_by do |person|
      person[1]
    end.first
    p highest_valued_name
    expect(highest_valued_name).to eq("Scarlett")
  end
end