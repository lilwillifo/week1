require './lib/card.rb'
require './lib/deck.rb'
require './lib/guess.rb'
require './lib/round.rb'

card_1 = Card.new("What is the capital of Virginia?", "Richmond")
card_2 = Card.new("What is Margaret's middle name?", "Eleanor")
card_3 = Card.new("Who was 7th president of USA?", "Andrew Jackson")
card_4 = Card.new("What year did Columbus \'discover\' America?", "1492")
card_array = [card_1, card_2, card_3, card_4]
deck = Deck.new(card_array)
round = Round.new(deck)


puts "Welcome! You're playing with #{deck.count} cards."
puts "--------------------------------------------------------"

deck.cards.each do |card|
  round_number = round.guesses.length + 1
  puts "This is card number #{round_number} of #{deck.count}."
  puts "Question: #{round.current_card.question}"
  user_guess = gets.chomp
  guess = round.record_guess(user_guess)
  puts guess.feedback
end

puts "******** Game over! *********"
puts "You had #{round.number_correct} correct guesses out of #{deck.count} for a score of #{round.percent_correct} percent!"
