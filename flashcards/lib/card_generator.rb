require 'pry'

class CardGenerator
  attr_reader :cards

  def initialize(filename)
    @cards = []
    read_file(filename)
  end

  def read_file(filename)
    File.open(filename, "r") do |f|
      f.each_line do |line|
        line = line.split(",")
        question =  line[0]
        answer = line[1].chomp
        @cards << Card.new(question, answer)
      end
    end
  end


end
