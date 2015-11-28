# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer the answer
# Output: either low high correct depending on guess. also true false, depending on lasst guess being correct
# Steps: create instance vars : answer solved and guess. have solved return solved,
#     have guess return guess at low high or correct respectively.


# Initial Solution

class GuessingGame_init
  def initialize(answer)
    @answer = answer
    @solved = false
    @guess = {'low'=>:low,'high'=>:high,'correct'=>:correct}
  end
  def solved?
      @solved
  end
  def guess guess
    @solved = false
    if guess < @answer
      return @guess['low']
    end
    if guess > @answer
      return @guess['high']
    end
    if guess == @answer
      @solved = true
      return @guess['correct']
    end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  def solved?
    @solved
  end
  def guess guess
    @solved = false
    if guess < @answer
      return :low
    end
    if guess > @answer
      return :high
    end
    if guess == @answer
      @solved = true
      return :correct
    end
  end
end



__END__
# Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  You can have a class Car. This car can drive, stop, turn left or whatever features you'd like.
  This is the same as any car, the two are similiar.
When should you use instance variables? What do they do for you?
  Instance vars are useful for when values are different amongst instances.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  I had no trouble, the tests were passed on the first try.  This is a pretty simple example.
  Flow control just means taking in the possible inputs, and directing them accordingly. You
  have to account for all possibilities.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  From my basic understanding so far, symbols are used to reference a certain set of data.  For instance,
  instead of having the same string saved thousands of times in memory, you just save that string to a symbol,
  and only 1 block of memory is stored. Then every time you reference that symbol, it only needs to
  look at that one section of memory.