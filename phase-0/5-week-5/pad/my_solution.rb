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
# take paramter length compared with param 2 value
# if param 1 less than param 2, fire a loop

# 1. Initial Solution
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



# 3. Refactored Solution



# 4. Reflection