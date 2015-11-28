# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array
# Output: a random side that is a value of the input
# Steps:


# Initial Solution

class Die_init
  attr_reader :sides
  def initialize(labels)
    unless labels.kind_of?(Array)
      raise ArgumentError.new("You must pass in an Array!")
    end
    if labels.length < 1
      raise ArgumentError.new("There cannot be less than one side!")
    end
    @sides = labels.length
    @labels = labels
  end
  def roll
    index = Random.rand(Time.now.strftime('%s').to_i) % @sides
    @labels[index]
  end
end






# Refactored Solution

class Die
  attr_reader :sides
  def initialize(labels)
    verify_input labels
    @sides = labels.length
    @labels = labels
  end
  def roll
    index = Random.rand(Time.now.strftime('%s').to_i) % @sides
    @labels[index]
  end
  def verify_input input
    unless input.kind_of?(Array)
      raise ArgumentError.new("You must pass in an Array!")
    end
    if input.length < 1
      raise ArgumentError.new("There cannot be less than one side!")
    end
  end
end





__END__
# Reflection

What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
  Logic was almost the same. There was minor tweaking that took place.
  Mainly just checking if is array, then accessing the index instead
  of just returning an integer.

What does this exercise teach you about making code that is easily changeable or modifiable?
  It was a valuable experience getting to change code to work in a new way.

What new methods did you learn when working on this challenge, if any?
  I got a refreshment on the king_of? method.  I'm too used to typeof!
What concepts about classes were you able to solidify in this challenge?
  This was mainly a refreshment for me.