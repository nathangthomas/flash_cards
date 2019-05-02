class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = []
  end

  def count
    cards.each do |card|
      cards += card
    end
  end
end
