require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'
require './lib/guess.rb'

class GuessTest < Minitest::Test

  def test_guess_contains_guess_and_card_instance_variable
    card_1 = Card.new("What is the capital of Virginia", "Richmond")
    guess = Guess.new("Denver", card_1)
    assert_instance_of Guess, guess
    assert_equal "Denver", guess.response
    assert_equal card_1, guess.card
  end

  def test_correct_method
    card_1 = Card.new("What is the capital of Virginia", "Richmond")
    guess = Guess.new("Denver", card_1)
    refute guess.correct?, false
  end

  def test_feedback_method
    card_1 = Card.new("What is the capital of Virginia", "Richmond")
    guess = Guess.new("Denver", card_1)
    assert guess.feedback, "Incorrect."
  end
#need to make guess.card show both question and response, not just class ID
end
