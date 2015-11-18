

# 1. Initial Solution

def separate_comma int
    input_s = int.to_s
    input_to_a = []
    returned_input = ''
    i = 0
    start = input_to_a.length % 3

    for i in 0...input_s.length
        if  i !=0 && (start == i || (i - start)%3 == 0)
            returned_input += ',' + input_s[i]
        else
            returned_input += input_s[i]
        end
        i += 1
    end
    returned_input
end

puts separate_comma 10
puts separate_comma 1055
puts separate_comma 10245
puts separate_comma 106245
puts separate_comma 10000098080980980980980980980980980980

# 2. Refactored Solution








__END__
Directions:

Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string


# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
    One argument that is a positive integer

# What is the output? (i.e. What should the code return?)
    It returns a comma-separated integer as a string

# What are the steps needed to solve the problem?
    create 2 variables,
        var 1 stores the input as a string
        var 2 will be the return value
    Create var1 who's value is the parameter as a string
    Create var2 who's value is an empty string
    LOOP each var1 char.
        if criteria is true
            append a comma and the current char to var2
        other wise, append the only the current char to var2
    return var2


# 1. Initial Solution
    Top of file ^^

# 2. Refactored Solution
    Top of file ^^

# 3. Reflection