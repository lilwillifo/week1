require 'pry'

class Car
  attr_accessor :color,
                :wheel_count

                def initialize
                  @wheel_count = wheel_count
                  @car_on = false
                end

    def horn
      "BEEEEEP!"
    end

    def drive(distance)
      "I'm driving #{distance} miles."
    end

    def report_color
      "I am #{color}." #referring to :color
    end

    def start
      if @car_on == false
        puts "Starting up!"
        @car_on = true
      elsif @car_on == true
        puts "BZZT! Nice try, though."
      end
    end

end

my_car = Car.new

puts my_car.horn
puts my_car.drive(12)
puts my_car.drive(12)

my_car.color = "purple"
puts my_car.report_color

wheel_count = 18

puts "This car has #{wheel_count} wheels."

my_second_car = Car.new
wheel_count = 2
puts "Car 2 has #{wheel_count} wheels."

my_car.start
my_car.start
