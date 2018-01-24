#iterate for 0 to 1000
#check if remainder = 0 when divided by number

count = 0
1001.times do
  if (count % 3) == 0 && (count % 5) == 0 && (count % 7) == 0
    puts "SuperFizzBuzz"
  elsif (count % 3) == 0 && (count % 7) == 0
    puts "SuperFizz"
  elsif (count % 5) == 0 && (count % 7) == 0
    puts "SuperBuzz"
  elsif (count % 3) == 0 && (count % 5) == 0
    puts "FizzBuzz"
  elsif (count % 3) == 0
    puts "Fizz"
  elsif (count % 5) == 0
    puts "Buzz"
  elsif (count % 7) == 0
    puts "Super"
  else
    puts count
  end
count = count + 1
end
