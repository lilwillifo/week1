class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

end

card1 = Card.new("test works?", "oh yea!")
puts card1.question
puts card1.answer
