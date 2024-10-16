RSpec.describe 'All Pattern' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
    all_zeros = false unless number > 0
    end
    puts all_zeros
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = false unless word == "gone"
    end
    puts all_gone
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = false unless word != "gone"
    end
    puts all_gone
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = true
    strings.each do |string|
      all_empty = false unless string.empty?
    end
    puts all_empty
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    all_empty = true
    strings.each do |string|
      all_empty = false unless string.empty?
    end
    puts all_empty
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each do |word|
      all_caps = false unless word == word.upcase
    end
    puts all_caps
    expect(all_caps).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = true
    lies.each do |lie|
      all_lies = false unless lie = true
    end
    puts all_lies
    expect(all_lies).to eq(true)
  end

  it 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = true
    numbers.each do |number|
      all_multiples_of_7 = false unless number % 7 == 0
    end
    puts all_multiples_of_7
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = true
    numbers.each do |number|
      all_3_digits = false unless number.to_s.length > 3
    end
    puts all_3_digits
    expect(all_3_digits).to eq(false)
  end

  it 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = true
    words.each do |word|
      all_4_letters = false unless word.length == 4
    end
    puts all_4_letters
    expect(all_4_letters).to eq(true)
  end
end
