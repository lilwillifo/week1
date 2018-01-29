require './lib/card.rb'
require './lib/guess.rb'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    round_number = @guesses.length + 1
    deck.cards[round_number - 1]
  end

  def record_guess(guess)
    round_number = @guesses.length
    @guesses << Guess.new(guess, @deck.cards[round_number])
    Guess.new(guess, @deck.cards[round_number])
  end

  def number_correct
    @guesses.count do |guess|
      guess.correct?
    end
  end

  def percent_correct #need to fix
    tally = @guesses.count do |guess|
      guess.correct?
    end
    if tally == 0
      0
    else
    (tally.to_f / @guesses.length * 100).to_i
    end
  end

  def start
    @deck.cards.each do |card|
      round_number = @guesses.length + 1
      puts "This is card number #{round_number} of #{@deck.count}."
      puts "Question: #{current_card.question}"
      user_guess = gets.chomp
      guess = record_guess(user_guess)
      puts guess.feedback
    end
    over
  end

  def over
    puts "******** Game over! *********"
    puts "You had #{number_correct} correct guesses out of #{@deck.count} for a score of #{percent_correct} percent!"
  end

end
