# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? three parameters,
#1) the array to use,
#2)number of elements, or array sizeo
# 3) value of the padded elements
# What is the output? (i.e. What should the code return?) return an array
# What are the steps needed to solve the problem?
# take parameter length compared with param 2 value
# if param 1 less than param 2, fire a loop

# 1. Initial Solution + refractor. please check commits!
def pad!(array, min_size, value = nil) #destructive

  if array.length < min_size
    i = min_size - array.length
    i.times {array.push(value)}
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  if new_array.length < min_size
    i = min_size - array.length
    i.times {new_array.push(value)}
  end
  new_array
end





__END__

# 4. Reflection

Were you successful in breaking the problem down into small steps?
  Yes, we were able to break this problem down, and solve it fairly easily
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  Working on this problem we didn't come across too much difficulty.  We both had
  a good grasp of what we needed to do, and were able to solve the problem with out
  too much effort. Understanding what a destructive method is (it changes the actual array)
  took some getting used to.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  Yes, our code passed on our first test attempt.
When you refactored, did you find any existing methods in Ruby to clean up your code?
  We really weren't able to refactor our code. Our initial solution used .push and nothing else
  was needed.
How readable is your solution? Did you and your pair choose descriptive variable names?
  Yes, we called our second parameter min_size, which lets the reader know that the parameter there
  represents the min_size of the array.
What is the difference between destructive and non-destructive methods in your own words?
  a destructive method performs it's actions on the actual array.
  Example:
    array_one = [1,2,3]
    array_two = array_one

    puts array_two  #=> 1,2,3
    array_one.SOME_DESTRUCTIVE_DELETE_METHOD(2)
    puts array_two  #=> 1,3

    The destructive method changes the actual value of the array. The opposite of this, non-destructive,
    would return a new array. So no matter what you do to array_one, array_two's value would remain the same.
