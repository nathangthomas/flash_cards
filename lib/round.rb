class Round
  attr_reader :deck, :turns, :number_correct, :number_correct_by_category

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_correct_by_category = 0
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
        end
      deck.cards.shift()
      new_turn
    end

  def number_correct_by_category(category)
      @turns.find do |turn|
        if turn.correct? && @turn.category == category
          #how to access the catagory of the Card Class within each turn
          @number_correct_by_category += 1

        end
    end
  end
end

#Incomplete Code File 







#querry metod

#
