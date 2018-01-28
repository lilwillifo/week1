require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'
require './lib/deck.rb'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Virginia", "Richmond")
    @card_2 = Card.new("What is Margaret's middle name?", "Eleanor")
    @card_3 = Card.new("Who was 7th president of USA?", "Andrew Jackson")
  end

  def test_deck_exists
    card_array = [@card_1, @card_2, @card_3]
    deck = Deck.new(card_array)
    assert_instance_of Deck, deck
  end

  def test_cards_method
    card_array = [@card_1, @card_2, @card_3]
    deck = Deck.new(card_array)
    assert_equal card_array, deck.cards
  end

  def test_count_method
    card_array = [@card_1, @card_2,@card_3]
    deck = Deck.new(card_array)
    assert deck.count, card_array.length
  end


end
