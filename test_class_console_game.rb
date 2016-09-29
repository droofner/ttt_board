require "minitest/autorun"
require_relative "class_console_game.rb"

class TestConsoleGame <Minitest::Test

	def test_game_requirements
		player1 = SequentialAI.new("X")
		player2 = SequentialAI.new("O")
		game = ConsoleGame.new(player1,player2)
		assert_equal("X", game.p1.marker)
		assert_equal("O", game.p2.marker)
		end
		def test_for_current_player
			p1 = RandomAI.new("X")
			p2 = RandomAI.new("O")
			game = ConsoleGame.new(p1, p2)
			assert_equal(p1,game.current_player)
			
		end
		def test_change_player
			player1 = SequentialAI.new(player1)
			player2 = SequentialAI.new(player2)
			game = ConsoleGame.new(player1,player2)
			assert_equal(player2, game.change_player(player1)) 
			assert_equal(player1, game.change_player(player2)) 
		end

end