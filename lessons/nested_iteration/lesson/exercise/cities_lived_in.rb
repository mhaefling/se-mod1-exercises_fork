cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
all_cities = []
cities_lived_in.each do |name, value|
    value.each do |city|
        all_cities << city
    end
end
p all_cities.uniq




# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

names = []
cities_lived_in.each do |name, value|
    if value.include?("Philadelphia")
        names << name.to_s.capitalize
    end
end
p names

p cities_lived_in.filter_map {|name, value| name.to_s.capitalize if value.include?("Philadelphia")}


# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

populations = {}
cities_lived_in.each do |person, cities|
    cities.each do |city|
        if populations[city]
            populations[city] += 1
        else
            populations[city] = 1
        end
    end
end
p populations

totals = []
cities_lived_in.each do |person, cities|
    cities.each do |city|
        totals << city
    end
end
totals = totals.tally
p totals