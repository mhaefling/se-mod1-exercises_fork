require 'pry'
# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
animal_strings = animals.map do |animal|
    animal.to_s
end
p animal_strings

# 2. Return an array of animals with a length >= 4.
animal_with_4 = []
animals.each do |animal|
    if animal.length >= 4
        animal_with_4 << animal
    end
end
p animal_with_4

animal_with_4_v2 = animals.find_all do |animal|
    animal.length >= 4
end
p animal_with_4_v2