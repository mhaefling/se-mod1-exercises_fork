# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:
# Use min and max
# By name (alphabetically)
# By age (youngest and oldest)
# By name length (shortest and longest)
# By number of children (least and most)

#Part TWO
# Given the object and array below, write the code that returns the sorted values:
# sort and sort_by
# By name (alphabetically)
# By age (youngest to oldest)
# By name length (shortest to longest)
# By number of children (least to most)


class Person
  attr_reader :name,
              :age,
              :children

  def initialize(name, age, kids)
    @name = name
    @age  = age
    @children = kids
  end
end

kardashians = []
kardashians << Person.new("Kourtney", 42, ["Mason", "Penelope", "Reign"])
kardashians << Person.new("Kim", 41, ["North", "Saint", "Chicago", "Psalm"])
kardashians << Person.new("Kris", 65, ["Kourtney", "Kim", "Khloe", "Rob", "Kendall", "Kylie"])
kardashians << Person.new("Khloe", 37, ["True"])

# Part ONE:
min_name = kardashians.min_by do |kardashian|
  kardashian.name
end
p min_name

max_name = kardashians.max_by do |kardashian|
  kardashian.name
end
p max_name

min_age = kardashians.min_by do |kardashian|
  kardashian.age
end
p min_age

max_age = kardashians.max_by do |kardashian|
  kardashian.age
end
p max_age

min_name_length = kardashians.min_by do |kardashian|
  kardashian.name.length
end
p min_name_length

max_name_length = kardashians.max_by do |kardashian|
  kardashian.name.length
end
p max_name_length

min_num_children = kardashians.min_by do |kardashian|
  kardashian.children.count
end
p min_num_children

max_num_children = kardashians.max_by do |kardashian|
  kardashian.children.count
end
p max_num_children

p "......................."

# Part TWO:
alpha_name_sort = kardashians.sort_by do |kardashian|
  kardashian.name
end
p alpha_name_sort

young_to_old = kardashians.sort_by do |kardashian|
  kardashian.age
end
p young_to_old

sort_number_of_children = kardashians.sort_by do |kardashian|
  kardashian.children.count
end
p sort_number_of_children