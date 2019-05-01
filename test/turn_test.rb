require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require 'pry'

card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
turn = Turn.new("Juneau", card)

binding.pry















# class TurnTest < Minitest::Test
#
# def test_it_exists
#   card = card.new("What is the capital of Alaska?", "Juneau", :Geography)
#
#   assert_instance_of Card, card
# end
