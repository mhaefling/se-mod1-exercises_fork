require 'pry'

# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

single_layer = []
nested_animals.each do |animal|
    animal.each do |name| 
        single_layer << name.to_s
    end
end
p single_layer

# 2. Return an unnested array of animals with length >= 4
single_layer_4 = []
nested_animals.each do |animal|
    animal.each do |name| 
        if name.length >= 4
            single_layer_4 << name
        end
    end
end
p single_layer_4

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

animal_info = {}

nested_animals.each do |animals|
    animals.each do |animal|
        animal_info[animal] = animal.length
    end
end

p animal_info
