# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
#create a method the outputs a random letter "B","I","N","G","O" + random number 1-100
#create a method that takes a board and letter/number i.e. B47 and checks whether that number letter
# is present on the board. If it is, make that value "X"
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#fill in the outline here

# Check the called column for the number called.
#fill in the outline here

# If the number is in the column, replace with an 'x'
#fill in the outline here

# Display a column to the console
#fill in the outline here

# Display the board to the console (prettily)
#fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo = ['B','I','N','G','O']
  end
  def call_bingo
    letter_index = Random.rand(Time.now.strftime('%s').to_i) % 5
    letter =  @bingo[letter_index]
    number = Random.rand(Time.now.strftime('%s').to_i) % 100 + 1
    puts letter
    puts number
    check_board letter, number
    #board
  end
  def check_board (letter, number)
    index = @bingo.index(letter)
    @bingo_board.each do |el|
      if el[index] == number
      el[index] = 'X'
      end
    end
  end
  def print_board
    @bingo_board.each do |el|
      p el
    end
  end
end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
end


def call
  bingo = ["B","I","N","G","O"]
  index = Random.rand(Time.now.strftime('%s').to_i) % 5
  number = Random.rand(Time.now.strftime('%s').to_i) % 100 + 1
  bingo[index] + number.to_s
end

def check board, called_number
  bingo = ["B","I","N","G","O"]
  index = bingo.index(called_number[0])
  called_number.slice!(0)
  board.each do |el|
    if el[index] == called_number.to_i
      puts 'match!!'
      el[index] = 'X'
    end
  end
end
def print_board board
  board.each do |el|
    p el
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]
#initial
#new_game = BingoBoard.new(board)
#puts '************board*************'
#new_game.print_board
#puts '************board*************'
#50.times {
#new_game.call_bingo
#}
#new_game.print_board


#refactored calls
50.times{
  check(board, call)
}
#check(board, call)
print_board board

__END__
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  This was not too difficult, as I stuck with what the code should produce, and not get into the details

What are the benefits of using a class for this challenge?
  The class makes this solution much more simple to see what is going on, and requires less code.

How can you access coordinates in a nested array?
  Easily with a nested .each.  However this was not necessary for this challenge because
  I already knew what index to check for.

What methods did you use to access and modify the array?
  the .index method worked really well here, as I used it to access that particular index
  for wach of the iterated arrays

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs,
what purpose does it serve, and how is it called?
  the .index method was cool, it returns the index of the first time it hits a value.
  Also the slice! method, which removes chars according to arguments.
How did you determine what should be an instance variable versus a local variable?
  I hope I did this right, as the first time I wrote it as a class. The second time
  I wrote it as methods. I thought that was the point of the exercise to see the value in
   using classes. I knew the board was going to be an instance var. my bingo var didn't need to be an instance var as
   it remained the same the entire time, across all instances
What do you feel is most improved in your refactored solution?
  My initial solution worked best as I wrote it using the class. I am now getting the impression that I did this
  assignment wrong!!