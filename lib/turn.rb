#display_board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
# code your input_to_index and move method here!
def input_to_index(user_input)
  index = user_input.to_i - 1
end
  

#valid_move?

def valid_move?(board, index)
    if !position_taken?(board, index) && (index).between?(0,8)
      return true
    else 
      return false
    end
  end

#position_taken?
def position_taken?(board,index)
    !(board[index].nil? || board[index] == " " || board[index] == "")
end

#move

def move(array, index, value = "X")
    array[index] = value
end

#turn

def turn(board)
    puts "Please enter 1-9:"
    xyz = gets.strip
    abc = input_to_index(xyz)
    if valid_move?(board,abc)
        move(board,abc,"X")
    else
        turn(board)
    end
    display_board(board)
  end