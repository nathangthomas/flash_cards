
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require 'pry'

class TurnTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end

  def test_if_it_exists

    assert_instance_of Turn, @turn
  end

  def test_does_it_have_a_guess
    assert_equal "Juneau", @turn.guess
  end

  def test_is_correct_answer_true
    assert @turn.correct?
  end


  def test_is_wrong_answer_false
    turn = Turn.new("Denver", @card)
    refute turn.correct?
  end

  def test_does_it_return_feedback
    assert_equal "Correct!", @turn.feedback
    turn = Turn.new("Denver", @card)
    assert_equal "Incorrect!", turn.feedback
  end
end
