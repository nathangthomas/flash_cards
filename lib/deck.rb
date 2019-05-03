class Deck
  attr_reader :cards, :count, :cards_in_category
    def initialize(cards)
      @cards = cards
    #  @cards_in_categories = cards_in_category
    end

    def count
      @cards.length
    end

    def cards_in_category(desired_category)
      card_array = []
      @cards.each do |card|
        if card.category == desired_category
          card_array << card
        end
      end
      return card_array
   end
end
