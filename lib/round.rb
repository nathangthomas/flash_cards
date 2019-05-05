class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

#states and behaviors
  def current_card
    @deck.cards[0]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
      # if new_turn.correct?
      #   number_correct += 1
      #   turn
      # end
      turn
    end

   def number_correct
    correct_num = 0
 end
end
  #


  #  # @deck.each do |card|
  #  #  if current_card == guess
  #  #      @turn << current_card



# access to current_card
# access to guess
# compare that current card_answer and guess are equal
# generate turn object
# go to next card


#querry metod

#
