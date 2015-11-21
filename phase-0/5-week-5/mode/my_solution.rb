# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of numbers and/or strings
# What is the output? (i.e. What should the code return?)
# Array of the most frequent elements
# What are the steps needed to solve the problem?
# Convert array to a hash whose values are the keys
# The value += each time a key is hit

# 1. Initial Solution

# def mode (array)
#   frequencies = {}
#   frequencies.default = 0
#
#   array.each do |x|
#     frequencies[x] +=1
#   end
#   new_array = []
#   frequencies.each { |k, v| new_array.push(k) if v == frequencies.values.max }
#   new_array
# end

print mode([1,1,1,1,2,3,4, 'Bob','Bob','Bob'])
print mode([1,2,3,4])
print mode([1,1,2,3,4,4,4,4,4,4,4])





# 3. Refactored Solution

def mode (array)
  frequencies = {}
  frequencies.default = 0

  array.each {|x|frequencies[x] +=1}

  new_array = []
  frequencies.each { |k, v| new_array.push(k) if v == frequencies.values.max }
  new_array
end



# 4. Reflection