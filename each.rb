require "pry"

def divider(title)
  dashes = "-" * title.chars.count
  "\n#{title}\n#{dashes}\n\n"
end

puts divider("Debuggers")
favorite_things = ["Trapper Keeper", "Netscape Navigator", "Troll Doll"]
# binding.pry

puts divider("Multi-Line Heartthrobs <3 <3 <3")
heartthrobs = ["Johnny Depp", "River Phoenix", "Luke Perry", "Mark-Paul Gosselaar"]

heartthrobs.each do |heartthrob|
  #binding.pry
  puts heartthrob
end

puts divider("Single Line TV Shows")
tv_shows = ["90210", "American Gladiators", "Roseanne", "Married with Children", "Perfect Strangers"]
tv_shows.each { |tv_show| puts tv_show }


puts divider("Iterated Heartthrobs") # The return value of .each
iterated_heartthrobs = heartthrobs.each { |heartthrob| puts heartthrob }
#binding.pry
puts iterated_heartthrobs.to_s

puts divider("Iterated TV Shows")
iterated_tv_shows = tv_shows.each { |tv_show| puts tv_show + " is awesome!"}
puts iterated_tv_shows.to_s

puts divider "TV Show"
tv_show = "Twin Peaks"
puts "Before the block: #{tv_show}"
tv_shows.each do |tv_show|
  puts "Inside the block: #{tv_show}" #this is only temporary variable
  #scope inside the block, overrides Twin Peaks
end
puts "After the block: #{tv_show}" #back to original variable
#this will puts Twin Peaks

puts divider "Favorite Network"
favorite_network = "ABC"
puts "Before the block: #{favorite_network}"

tv_shows.each do |tv_show|
  favorite_network = "NBC"
  #this is defined outside of the loop,
  #so this impacts the variable outside of the loop
  #not a temp variable
  puts "Inside the block: #{favorite_network}"
  puts tv_show
end

puts "After the block: #{favorite_network}"
#this will be NBC

puts divider "Favorite Shows"

favorite_shows = []

tv_shows.each do |tv_show|
  if tv_show.include?("merica")
    favorite_shows << tv_show
  end
end

puts favorite_shows

puts divider "Favorite Show"
tv_shows.each do |tv_show|
  favorite_show = "Twin Peaks"
  puts favorite_show
  #this will print Twin Peaks the # of times as the element in array
end

#puts favorite_show
#this wouldn't work because it is outside of scope 
