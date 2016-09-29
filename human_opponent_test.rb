require "minitest/autorun"
require_relative "human_opponent.rb"

class TestHumanOpponent <MiniTest::Test 
	def test_create_human_player
		player = HumanOpponent.new("X")
		assert_equal("X", player.marker)
	end
	def test_get_move
		player = HumanOpponent.new ("X")
		move = player.get_move([" "," "," "," "," "," "," "," "," "])
		assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(move))
	end
end
