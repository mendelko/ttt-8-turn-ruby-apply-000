def display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts 'display board'

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index = input_to_index(user_input)
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  if !position_taken?(board, index) && (index).between?(0,8)
    return true
  else
    return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value = "X")
    array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"

  user_input = gets.strip

  index = input_to_index(user_input)
  token = current_player(board)

 if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
end
  display_board(board)
end

def turn_count(board)
  counter = 0
  loop do
    counter += 1
    puts "#{board}"
    if counter >= 10
      break
    end
  end

def current_player(board)
  if turn_count(board)%2 ==0
    current_player = "X"
  else
    current_player = "O"
end
return current_player
end

def play(board)
  until over?(board) == true || won?(board) != false
  puts 'turn'
    turn(board)
  end
  if winner(board)
    puts "Congratulations!"
  elsif draw?(board)
    puts "Draw!"
  else
    return nil
  end
end
