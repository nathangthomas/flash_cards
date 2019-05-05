class Round
  attr_reader :deck, :turns, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

#states and behaviors
  def current_card
    @deck.cards[0]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
      if new_turn.correct?
        @number_correct += 1
    new_turn
       end
    end
end
  #I need to compare the guess with the answer in a turn and add 1 to correct_num



#querry metod

#
