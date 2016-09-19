require './dict.rb'

# create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

# add some more cities
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')

# puts out some cities
puts '-' * 10
puts "NY state has: #{Dict.get(cities, "NY")}"
puts "OR state has: #{Dict.get(cities, "OR")}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is #{Dict.get(states, 'Florida')}"

# puts every state abbreviation
puts '-' * 10
Dict.list(states)

# puts every city in state
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = Dict.get(states, "Texas")

if !state
  puts "Sorry, no texas"
end

# default values using ||= with the nil result
city ||= Dict.get(cities, "TX", 'Does not exist')
puts "The city for the state 'TX' is: #{city}"


