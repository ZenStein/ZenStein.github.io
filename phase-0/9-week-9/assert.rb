


# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert(assertion_id)
  raise "Assertion failed!" unless yield
  puts 'Assertion '+ assertion_id.to_s+' Passed!!'
end



# 2. Pseudocode what happens when the code above runs

# Create a function named assert that takes a block. the block should return
# a bool. If the block returns true, raise is ran with a message.

# 3. Copy your selected challenge here

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
#Driver Code
=begin
game = GuessingGame.new(10)

puts game.solved?   # => false

puts game.guess(5)  # => :low
puts game.guess(20) # => :high
puts game.solved?   # => false

puts game.guess(10) # => :correct
puts game.solved?   # => true
=end
# 4. Convert your driver test code from that challenge into Assert Statements
  game = GuessingGame.new(10)
assert(1) {
  game.instance_of? GuessingGame
}
assert(2){
  game.solved? == false
}
assert(3){
  game.guess(5) == :low
}

assert(4){
  game.guess(20) == :high
}
assert(5){
  game.solved? == false
}
assert(6){
  game.guess(10) == :correct
}
assert(7){
  game.solved? == true
}
__END__
# 5. Reflection
 On review One.

