# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left col
  [1,4,7],  # Middle col
  [2,5,8],  # Right col
  [0,4,8],  # Diag 1
  [2,4,6]  # Diag 2
  # ETC, an array for each win combination
]

def won?(board)
  WIN_COMBINATIONS.each do |combinations|
    if (board[combinations[0]]== "X" && board[combinations[1]]=="X" && board[combinations[2]]=="X") ||
      (board[combinations[0]] == "O" && board[combinations[1]]== "O" && board[combinations[2]]== "O")
      return combinations
    end
  end
  return false
end

def full?(board)

end
