
#3 always has Fizz
#5 always has Buzz
#7 always has Super
(0..1000).each{|i|
      x = ""
        x += "Super" if (i % 7) == 0
        x += "Fizz" if (i % 3) == 0
        x += "Buzz" if (i % 5) == 0
      puts(x.empty? ? i : x);
  }
