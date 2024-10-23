RSpec.describe 'max and min by pattern' do
  it 'test 1'  do
    numbers = [1, 100, 1000, 1000000]
    greatest = numbers[0]
    numbers.each do |number|
      if number > greatest
        greatest = number
      end
    end
    expect(greatest).to eq(1000000)
  end

  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1000000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each do |name, value|
      if value > greatest
        greatest = value
      end
    end
    expect(greatest).to eq(1000000)
  end

  it 'test 3' do
    meals = ["banana", "nuts", "salad", "steak", "cake"]
    shortest_word = meals[0]
    meals.each do |meal|
      if meal.length < meals[0].length
        shortest_word = meal
        break
      end
    end
    puts shortest_word
    expect(shortest_word).to eq("nuts")
  end

  it 'test 4' do
    meals = {
      breakfast: "banana",
      snack: "nuts",
      lunch: "salad",
      dinner: "steak",
      dessert: "cake"
    }
    shortest_word = meals[meals.keys.first]
    meals.each do |meal, dish|
      if dish.length < meals[meals.keys.first].length
        shortest_word = dish
        break
      end
    end
    expect(shortest_word).to eq("nuts")
  end

  it 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    stats.each do |stat|
      if stat.to_s.length > stats[0].to_s.length
        most_digits = stat
      end 
    end
    puts most_digits
    expect(most_digits).to eq(0.27601)
  end

  it 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    stats.each do |game, stat|
      if stat.to_s.length > stats[stats.keys.first].to_s.length
        most_digits = stat
      end
    end
    puts most_digits
    expect(most_digits).to eq(0.27601)
  end

  it 'test 7' do
    ages = [39, 45, 29, 24, 50]
    oldest = 0
    ages.each do |age|
      if age == ages.max
        oldest = age
      end
    end
    expect(oldest).to eq(50)
    puts oldest
  end

  it 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    oldest = {}
    ages.each do |name, age|
      if age == ages.values.max
        oldest = { name: name.to_s, age: age }
      end
    end
    puts oldest
    expected = {name: "miguel", age: 50}
    expect(oldest).to eq(expected)
  end

  it 'test 9' do
    programmers = [["katrina", "sandi", "jim", "aaron", "desi"], ["abby", "jon", "susan"]]
    fewest_programmers = []
    programmers.each do |programmer|
      if programmer == programmers.min
        fewest_programmers = programmer
      end
    end
    p fewest_programmers
    expect(fewest_programmers).to eq(["abby", "jon", "susan"])
  end

  it 'test 10' do
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    fewest_programmers = nil
    programmers.each do |key, programmer|
      if programmer == programmers.values.min
        fewest_programmers = key
      end
    end
    p fewest_programmers
    expect(fewest_programmers).to eq(:java)
  end
end
