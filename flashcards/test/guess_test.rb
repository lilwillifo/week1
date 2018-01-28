require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'
require './lib/guess.rb'

class GuessTest < Minitest::Test
  
  def setup
    @card_1 = Card.new("What is the capital of Virginia", "Richmond")
    @guess = Guess.new("Denver", @card_1)
  end

  def test_guess_contains_guess_and_card_instance_variable
    assert_instance_of Guess, @guess
    assert_equal "Denver", @guess.response
  end

  def test_card_method
    assert_equal @card_1, @guess.card
  end

  def test_correct_method
    refute @guess.correct?, false
  end

  def test_feedback_method
    assert @guess.feedback, "Incorrect."
  end
end
