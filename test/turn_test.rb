require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

def test_it_exists
  card = card.new("What is the capital of Alaska?", "Juneau", :Geography)

  assert_instance_of Card, card
end
