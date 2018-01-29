require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/card.rb'
require './lib/guess.rb'
require './lib/deck.rb'
require './lib/round.rb'


class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Virginia", "Richmond")
    @card_2 = Card.new("What is Margaret's middle name?", "Eleanor")
    @card_3 = Card.new("Who was 7th president of USA?", "Andrew Jackson")
    @card_array = [@card_1, @card_2, @card_3]
    @deck1 = Deck.new(@card_array)
    @round = Round.new(@deck1)
  end

  def test_round_exists_and_deck_method
    assert_instance_of Round, @round
  end

  def test_deck_method
    assert_equal @round.deck, @deck1
  end

  def test_guesses_before_user_input
    assert_equal @round.guesses, []
  end

  def test_current_card_at_game_beginning
    assert_equal @round.current_card, @card_1
  end

  def test_record_guess_returns_instance_of_guess_class
    assert_instance_of Guess, @round.record_guess("Richmond")
  end

  def test_record_guess_shovels_into_guesses_array
    @round.record_guess("Richmond")
    assert_equal @round.guesses[0].response, "Richmond"
  end

  def test_record_guess_has_same_card_argument
    assert_equal @round.record_guess("Richmond").card, @card_1
  end

  def test_number_correct_accurate_tally
    tally = @round.guesses.count do |guess|
      guess.correct?
    end
    assert_equal @round.number_correct, tally
  end

  def test_current_card_progresses_to_next_card
    assert_equal @round.current_card, @deck1.cards[@round.guesses.length]
    #The length of the array of guesses (total number of guesses)
    #will match the index of cards array
  end

  def test_percent_correct
    tally = @round.guesses.count do |guess|
      guess.correct?
    end
    assert_equal @round.percent_correct, tally / @round.guesses.count * 100 unless tally == 0
  end

end
