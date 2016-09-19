require "minitest/autorun"
require_relative "board.rb"

class TestBoard <Minitest::Test 
 	def test_new_board_created
 		board = Board.new()
 		assert_equal([" "," "," "," "," "," "," "," "," "], board.ttt_board)
 	end

 	def test_update_new_board_with_X_at_index_position_0
 		board = Board.new()
 		board.update_board(0, "X")
 		assert_equal(["X"," "," "," "," "," "," "," "," "], board.ttt_board)
 	end
 	def test_update_partially__full_board_with_O_at_index_position_4
 		board = Board.new()
 		board.ttt_board = ["X","O"," "," "," "," ","O"," ","X"]
 		board.update_board(4, "O")
 		assert_equal(["X","O"," "," ","O"," ","O"," ","X"], board.ttt_board)
 	end
 	def test_valid_space__at_position_2_returns_true
 		board = Board.new()
 		board.ttt_board = ["X","O"," "," "," "," ","O"," ","X"]
 		assert_equal(true, board.valid_space?(2))
 	end
 	def test_valid_space_at_position_0_returns_false
		board = Board.new()
 		board.ttt_board = ["X","O"," "," "," "," ","O"," ","X"]
 		assert_equal(false, board.valid_space?(0))
 		assert_equal(false, board.valid_space?(-1))
 	end
 	def test_if_board_is_full_for_tie
 		board = Board.new()
 		board.ttt_board = ["X","O","X","X","O"," O","O","X","X"]
 		assert_equal(true,board.game_tie?())
 	end
 	def test_if_board_returns_false_for_tie
 		board = Board.new()
 		board.ttt_board = ["X","X","X","O","O"," ","O","X","O"]
 		assert_equal(false, board.game_tie?)
 	end
 	def test_new_board_returns_false_for_win
 		board = Board.new()
 		marker = " "
		board.ttt_board = ["X","O","X","O","O"," ","O","X","O"]
 		assert_equal(false, board.game_won?(marker))
 	end
 	def test_Xs_top_row_returns_true_for_win
 		board = Board.new()
 		marker = "X"
 		board.ttt_board = ["X","X","X","O","O"," "," "," "," "]
 		assert_equal(true, board.game_won?(marker))
 	end
 	def test_Os_middle_row_returns_true_for_win
 		board = Board.new()
 		marker = "O"
 		board.ttt_board =["X","O","X","O","O","O"," ","X"," "]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Os_bottom_row_returns_true_for_win
 		board = Board.new()
 		marker = "O"
 		board.ttt_board =["X","O","X","O"," "," ","O","O","O"]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Xs_1st_row_returns_true_for_win
 		board = Board.new()
 		marker = "X"
 		board.ttt_board =["X","O"," ","X"," "," ","X","O","O"]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Xs_2nd_row_returns_true_for_win
 		board = Board.new()
 		marker = "X"
 		board.ttt_board =["O","X"," ","O","X"," "," ","X","O"]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Os_3rd_row_returns_true_for_win
 		board = Board.new()
 		marker = "O"
 		board.ttt_board =["X","O"," ","O","O","X","X","O"," "]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Os_left_to_right_diagnal_row_returns_true_for_win
 		board = Board.new()
 		marker = "O"
 		board.ttt_board =["O"," ","X","O","O","X","X"," ","O"]
 		assert_equal(true, board.game_won?(marker))
	end
	def test_Xs_right_to_left_diagnal_row_returns_true_for_win
 		board = Board.new()
 		marker = "X"
 		board.ttt_board =["O"," ","X","O","X","X","X","O"," "]
 		assert_equal(true, board.game_won?(marker))
	end
end