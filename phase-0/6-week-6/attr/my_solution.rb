#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :get_name
 def initialize
   @get_name = 'Chris'
 end
end


class Greetings
  def initialize
    name = NameData.new
    @name = name.get_name
  end
  def hello
    puts "Hello #{@name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

__END__

Release 1
What are these methods doing?
  Accessing and changing instance vars
How are they modifying or returning the value of instance variables?
  Using methods that return them, or set them equal to the arguments passed

Release 2
What changed between the last release and this release?
  The class in now using 'attr_reader :age'
What was replaced?
  The method 'what_is_age' is no longer necessary.
Is this code simpler than the last?
  Yes. Much simpler, and more readable

Release 3
What changed between the last release and this release?
The class is now using 'attr_writer :age'
What was replaced?
  The method 'change_my_age=' is no longer necessary
Is this code simpler than the last?
  Yes. Much simpler, and more readable
# Reflection
What is a reader method?
  A method that returns an instance vars value
What is a writer method?
  A method that allows you to change an instance vars value
What do the attr methods do for you?
  Eliminate a lot of redundant getter/setter code.
Should you always use an accessor to cover your bases? Why or why not?
  Based on my simple understanding, If there is no calculations that need to be
  done. This is the best way to use a setter/getter. There might be more complex
  instances where this is not the best use case, however, I am not aware of any
  situation where this is not the best practice.
What is confusing to you about these methods?
  Not at all. It's actually a relief and a time saver to have these valuable
  standards that eliminate a lot of redundancy.