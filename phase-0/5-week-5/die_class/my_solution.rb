# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input : @Class Die: an integer whos value is greater than or equal to 2.
# Output: @method sides: number of possible outcomes, or 'sides of the dice'
# Output: @method roll: a random integer that is greater than one and less than or equal to sides
# Steps : @method sides: take the @sides accessor and get it.
#         @method roll: generate a random number and modulus it to keep it in range. return number

# 1. Initial Solution

class Die
 attr_reader :sides
  def initialize(sides)
  if sides < 1
      raise ArgumentError.new("There cannot be less than one side!")
  end
   @sides = sides
  end

    def roll
        Random.rand(Time.now.strftime('%s').to_i) % @sides + 1
    end
end


# 3. Refactored Solution

# With the assignment being so simple, I'm really not sure how I can break this down any further.




__END__
# 4. Reflection

What is an ArgumentError and why would you use one?
    It is an Exception Class. It is useful when developing, as it catches errors and throws out a message.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
    I recently learned how to write out an accessor. It is really nice and convenient the way that has been set up.
    I had a little confusion as to how an accessor is to be written, I am going to have to write them a few more times
    until I will be comfortable writing them off the top of my head.

What is a Ruby class?
    I like to think of a class as a bunch of properties(variables) and functions(methods) wrapped up into one object.

Why would you use a Ruby class?
    Class's are valuable for many reasons. To name a few:
     1) Keeping functions organized, keeping functions that depend on each other one are.
     2) Allows for more complex data types.
     3) Allows code to be reused more effectively.
     4) Data encapsulation. <<-- MOST IMPORTANT REASON
What is the difference between a local variable and an instance variable?
    a local variable is available in the current scope, or context.  An instance variable is created whenever a new
    object is 'new'd up or created. Assuming that there are two objects that have been created from the same class,
    They will both have the same variable, However it's value may be different.
Where can an instance variable be used?
    You can use these variables once you have instantiated a class.  Stated another way, when you create an instance
    of a class. An example would be SOMEVAR = SOMECLASS.new.  The 'new' keyword (or in ruby, new method) creates and
    instance.