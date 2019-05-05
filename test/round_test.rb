require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'


class RoundTest < MiniTest::Test
  def setup
      @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      @cards = [@card_1, @card_2, @card_3]
      @deck = Deck.new(@cards)
      @round = Round.new(@deck)
  end

  def test_it_exisits

    assert_instance_of Round, @round
  end

  def test_it_can_return_deck

    assert_equal @deck, @round.deck
  end

  def test_turns_start_empty

    assert_equal [], @round.turns
  end

  def test_it_can_return_current_card

    assert_equal @card_1, @round.current_card
  end

  def test_does_new_turn_exist
    new_turn = @round.take_turn("Juneau")

    assert_instance_of Turn, new_turn
  end

  def test_does_it_return_true
    new_turn = @round.take_turn("Juneau")

    assert new_turn.correct?
  end

  def test_taking_a_turn_adds_that_turn_to_turns_array
    new_turn = @round.take_turn("Juneau")

    assert_equal new_turn, @round.turns.first
  end

def test_does_number_correct_count
    new_turn = @round.take_turn("Juneau")

    assert_equal 1, @round.number_correct
  end

def test_does_round_current_card_iterate_to_next_card
    new_turn = @round.take_turn("Juneau")
    assert_equal @card_2, @round.current_card
  end

def test_round_turns_count_is_2
  new_turn_2 = @round.take_turn("Juneau")
  new_turn_1 = @round.take_turn("Venus")

binding.pry
  assert_equal 2, @round.turns.count


end
end

#pry(main)> round.turns.last.feedback
#=> "Incorrect."
