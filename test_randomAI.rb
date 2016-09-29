require "minitest/autorun"
require_relative "RandomAI.rb" 

class TestRandomAI <MiniTest::Test 	
	def test_for_available_position_returned_using_random_ai_and_only_one_open_position
        player = RandomAI.new("X")
        assert_equal(4, player.get_move(["X","O","X","O"," ","X","O","X","O"]))
	end 
	def test_for_available_position_returned_using_random_ai_and_multiple_open_positions
        player = RandomAI.new("X")
        100.times do
        assert_equal(true, [3,4].include?(player.get_move(["X","O","X"," "," ","X","O","X","O"])))
		end
	end
	def test_for_new_player
		player = RandomAI.new("O")
		assert_equal("O",player.marker)
	end
end