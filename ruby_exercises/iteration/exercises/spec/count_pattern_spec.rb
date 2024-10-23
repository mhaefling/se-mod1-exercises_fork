RSpec.describe 'count pattern' do

  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = 0
    ages.each do |age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    expect(younger_than_thirty).to eq(2)
  end

  it 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = 0
    ages.each do |name, age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    expect(younger_than_thirty).to eq(2)
  end

  it 'test 3' do
    ages = [39, 45, 29, 24, 51]
    older_than_fifty = 0
    ages.each do |age|
      if age > 50
        older_than_fifty += 1
      end
    end
    puts older_than_fifty
    expect(older_than_fifty).to eq(1)
  end

  it 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 73,
      margaret: 51,
      miguel: 50
    }
    older_than_fifty = 0
    ages.each do |name, age|
      if age > 50
        older_than_fifty += 1
      end
    end
    puts older_than_fifty
    expect(older_than_fifty).to eq(2)
  end

  it 'test 5' do
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = 0
    ages.each do |age|
      if age % 3 == 0
        multiple_of_three += 1
      end
    end
    puts multiple_of_three
    expect(multiple_of_three).to eq(3)
  end

  it 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = 0
    ages.each do |name, age|
      if age % 3 == 0
        multiple_of_three += 1
      end
    end
    puts multiple_of_three
    expect(multiple_of_three).to eq(3)
  end

  it 'test 7' do
    family = ["alice", "bob", "charlie", "david", "eve"]
    names_with_three_letters = 0
    family.each do |name|
      if name.length == 3
        names_with_three_letters += 1
      end
    end
    puts names_with_three_letters
    expect(names_with_three_letters).to eq(2)
  end

  it 'test 8' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    names_with_three_letters = 0
    family.each do |title, name|
      if name.length == 3
        names_with_three_letters += 1
      end
    end
    puts names_with_three_letters
    expect(names_with_three_letters).to eq(2)
  end

  it 'test 9' do
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    whole_numbers = 0
    prices.each do |price|
      if price % 1 == 0
        whole_numbers += 1
      end
    end
    puts whole_numbers
    expect(whole_numbers).to eq(2)
  end

  it 'test 10' do
    prices = {
      "shoes" => 1.0,
      "backpack" => 3.9,
      "books" => 5.99,
      "posters" => 18.5,
      "food" => 20.0
    }
    whole_numbers = 0
    prices.each do |item, price|
      if price % 1 == 0
        whole_numbers += 1
      end
    end
    puts whole_numbers
    expect(whole_numbers).to eq(2)
  end
end
