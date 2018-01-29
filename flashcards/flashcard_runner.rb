require './lib/card.rb'
require './lib/deck.rb'
require './lib/guess.rb'
require './lib/round.rb'
require './lib/card_generator.rb'

class FlashcardRunner

  def preload_deck
    cards_array = CardGenerator.new("./data/cards.txt").cards
    @deck = Deck.new(cards_array)
    @round = Round.new(@deck)
  end

  def initialize
    preload_deck
    start_round
  end

  def start_round
    puts "Welcome! You're playing with #{@deck.count} cards."
    puts "--------------------------------------------------------"
    @round.start
  end

end
FlashcardRunner.new
