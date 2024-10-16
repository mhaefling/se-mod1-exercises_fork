RSpec.describe 'sort_by pattern' do

  it 'sorts alphabetically' do
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["Bacon", "broccoli", "candy", "Carrots", "FISH"])
  end

  it 'alphabetically by last letter' do
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.each do |thing|
      transformed << [thing[-1], thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, thing|
      sorted << thing
    end
    puts sorted
    expect(sorted).to eq(["sponge", "pill", "water", "glass", "box"])
  end

  it 'sort by distance' do
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    distances.each do |distance|
      transformed << [distance.delete('cm').to_i, distance]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      sorted << distance
    end
    puts sorted
    expect(sorted).to eq(["1cm", "2cm", "4cm", "9cm", "30cm"])
  end

  it 'by length' do
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    word_length = []
    words.each do |word|
      word_length << [word.length, word]
    end
    word_length = word_length.sort
    sorted = []
    word_length.each do |sort_key, word|
      sorted << word
    end
    puts sorted
    expect(sorted).to eq(["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    distance_from_ten = []
      prices.each do |number|
        distance_from_ten << [(10 - number).abs, number]
      end
    distance_from_ten = distance_from_ten.sort
    sorted = []
    distance_from_ten.each do |sort_key, number|
      sorted << number
    end
    puts sorted
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    dec_value = []
    prices.each do |num|
      dec_value << [num % 1, num]
    end
    dec_value = dec_value.sort
    sorted = []
    dec_value.each do |sort_key, num|
      sorted << num
    end
    puts sorted
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
