require "minitest/autorun"
require_relative "SequentialAI.rb"

class TestSequentialAI  <MiniTest::Test
	def test_first_available_space_returned
        player = SequentialAI.new("X")
        assert_equal(0, player.get_move([" "," "," "," "," "," "," "," "," "]))
		assert_equal(2, player.get_move(["O","O"," "," "," "," "," "," "," "]))
		assert_equal(4, player.get_move(["O","O","X","X"," "," "," "," "," "]))
	end

	def test_create_new_player
		player = SequentialAI.new("O")
		assert_equal("O", player.marker)
		
	end
end


