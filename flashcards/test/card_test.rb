require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'

class CardTest < Minitest::Test
  def test_card_has_question_and_answer
    card = Card.new("Does this work?", "maybe")
    assert_instance_of Card, card
    assert_equal "Does this work?", card.question
    assert_equal "maybe", card.answer
  end

end
