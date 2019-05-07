class Round
  attr_reader :deck, :turns, :number_correct, :number_correct_by_category, :percent

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
    @number_correct_by_category = 0
    @percent_correct = 0
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
  end
  #
  # def

  # def percent_correct(category)
  #   @turns.count do |turn|
  #   turn.correct? && turn.card.category == category
  #     (percent_correct_by_category / turn.card.category.length) * 100
  #   end
  #     #maybe use a hash with card_num as the key



   #(num_correct / card.length) * 100



  # def correct
  #   correct = @number_correct
  # end








#querry metod

#
