class Deck
attr_reader :cards
  def initialize(cards)
  @cards = cards
  end

  # def add_card=(card)
  #   cards.each do |card|
  #     card << @cards
  #   end
  #end
end




# =class Deck
#   attr_reader :cards
#   def initialize(cards)
#     @cards = []
#   end
#
#   def count
#     cards.each do |card|
#       cards += card
#     end
#   end
# end
