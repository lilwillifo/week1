require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'



class CardTest < Minitest::Test

  def setup
        @card = Card.new("Does this work?", "maybe")
  end

  def test_card_exists
    assert_instance_of Card, @card
  end

  def test_card_has_question_and_answer
    assert_equal "Does this work?", @card.question
    assert_equal "maybe", @card.answer
  end

end
