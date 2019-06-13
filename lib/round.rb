class Round
  attr_reader :deck, :turns, :number_correct, :number_correct_by_category, :percent_correct, :percent_correct_by_category

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_correct_by_category = 0
    @percent_correct = 0
    @percent_correct_by_category = 0
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
    @deck.cards.shift
    new_turn
  end

  def number_correct_by_category(category)
    @turns.count do |turn|
      turn.correct? && turn.card.category == category
    end
  end

    def percent_correct
      @percent_correct = (number_correct.to_f / turns.length)*100
    end

  def percent_correct_by_category(category)
    number_correct_by_category = 0
    number_category_turns = 0
    @turns.each do |turn|
      if turn.correct? && turn.card.category == category
        number_correct_by_category += 1
        if turn.card.category == category
          number_category_turns += 1
        end
      end
    end
    (number_correct_by_category.to_f / number_category_turns) * 100
  end
end
