class Card

  attr_accessor :question, :answer, :category
  def initialize(question, answer, category)
      @question = question
      @answer = answer
      @category = category
  end
end

card.new = ("What is the capital of Alaska?", "Juneau", :Geography)
