require 'pry'

def first_last(first, *middle, last)
  puts "This first argument is #{first}"
  puts "The last argument is #{last}"
end

first_last(1,2,3,4)

animals = ["dog", "cat", "goat", "capybara"]
#or shortcut: animals = %w(dog cat goat capybara)
animals_capitalized = animals.map {|animal| animal.capitalize}

puts animals_capitalized

def single_string(array)
  string = array.inject("") do |result, animal|
    result + animal + ", "
  end
end

puts single_string(animals_capitalized)

#escape strings
escape = "Margaret \n5'5\""
puts escape
escape.split #returns ["Margaret", "5'5\""]
