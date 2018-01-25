require './lib/card.rb'

class Guess
  attr_reader :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def card
    @card.inspect
  end

  def correct?
    if response == @card.answer
      true
    else
      false
    end
  end

  def feedback
    if response == @card.answer
      "Correct!"
    else
      "Incorrect."
    end
  end

end
