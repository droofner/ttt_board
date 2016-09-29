require_relative "class_console_game.rb"


p1 = RandomAI.new("X")
p2 = RandomAI.new("O")
game = ConsoleGame.new(p1, p2)

game.start_game()
game.board_status()
until game.game_over?
	game.change_player
	move = game.get_player_move
	game.make_move(move)
	#game.change_player
	game.board_status

end
