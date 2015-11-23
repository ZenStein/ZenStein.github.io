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

__END__

# 4. Reflection

Which data structure did you and your pair decide to implement and why?
  We used a hash, because the hash allowed us to use the array value as the hash key,
  and the hash value would indicate the frequency of that value in the array. Using a hash was easier
  because the  key=>value keeps the value and the frequency bound together.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  Yes and no. We were successful in both, I wouldn't say more successful. I would say I'm stil geting the
  hang of writing pseudocode.
What issues/successes did you run into when translating your pseudocode to code?
  We solved this problem fairly easily, with little effort. Our code passed on the first try.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  Yes, I found a new method. This method returns the value if that value is the max value.
  .value.max is a pretty cool method, saves a lot of logic code!