require "minitest/autorun"
require_relative "console_ai.rb"

class TestConsoleAI <MiniTest::Test 
	
	def test_for_new_player
		p1 = SequentialAI.new
		p2 = SequentialAI.new
		game = ConsoleGame.new (p1, p2)
		assert_equal("X", game.p1.marker)
	end

	# test_console_available_space_returned
	#	player = ConsoleAI.new("X")
	#	move = player.get_move([" "," "," "," "," "," "," "," "," "])
	#	assert_equal(true, [0,1,2,3,4,5,6,7].include?(move))
	#end
end
