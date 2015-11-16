# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.
# 1.create var the will be the return, which holds the sum total of all values in array
# 2.iterate over array
# 3.while iterating, take each new value, and add it (+=) to our return var


# 1. total initial solution

def total arr
sum_total = 0
arr.each do  |el|
sum_total += el
end
sum_total
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: sentence_maker ['I','love','pizza']
# Output: 'I love pizza'
# Steps to solve the problem.
#1, create two vars, one will be the return string, the other will be called space representing ' '
#2. iterate over the array, concatenating the return string (+=) a space + value for each element
#3. return the concatenated string
# 5. sentence_maker initial solution
=begin
def sentence_maker arr
    catenated_str = ''
    space = ' '
    arr.each do |el|
        catenated_str += space + el
    end
    catenated_str
end
=end
# 6. sentence_maker refactored solution
# add i var to keep track of index, and modify to Capitalize and add period at the end
def sentence_maker arr
    catenated_str = ''
    space = ' '
    i = 0

    arr.each do |el|
        catenated_str += i == 0 ? el.capitalize.to_s : i == (arr.length - 1) ? space + el.to_s + '.' : space + el.to_s
        i+=1
    end
    catenated_str
end

puts sentence_maker ['this','is','a', 'test']