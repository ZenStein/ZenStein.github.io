
=begin
# 1. Initial Solution

def separate_comma int
    input_s = int.to_s
    returned_input = ''
    i = 0
    start = input_s.length % 3
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

puts separate_comma 1
puts separate_comma 10
puts separate_comma 100
puts separate_comma 1000
puts separate_comma 10000
puts separate_comma 100000
puts separate_comma 1000000
puts separate_comma 10000000
puts separate_comma 100000000
puts separate_comma 1000000000
puts separate_comma 1000000000000000000000000000000000
puts separate_comma 10000000000000000000000000000000000
puts separate_comma 100000000000000000000000000000000000
=end


# 2. Refactored Solution
class IntHandle
def initialize int

end

end
class TrackIndex
  def initialize
    @@count = 0
    @@kickstarted = false
  end

  def next
    @@count += @@kickstarted == false ? 0 : 1
    @@kickstarted = true
    @@count
  end
end


def commify index, length, el
    offset = length % 3
    comma_or_nada = (index != 0 && index%3 == offset && length > 3) ? ',' : ''
    commified = comma_or_nada + el
end

def arrayify_int int
    int.to_s.split('')
end

def separate_comma int
    arrayified = arrayify_int(int)
    length = arrayified.length
    the_return = ''
    index = TrackIndex.new()
   arrayified.each do |el|
        the_return += commify((index.next), length, el)
    end
    the_return
end

puts separate_comma 1
puts separate_comma 10
puts separate_comma 100
puts separate_comma 1000
puts separate_comma 10000
puts separate_comma 100000
puts separate_comma 1000000
puts separate_comma 10000000
puts separate_comma 100000000
puts separate_comma 1000000000
puts separate_comma 1000000000000000000000000000000000
puts separate_comma 10000000000000000000000000000000000
puts separate_comma 100000000000000000000000000000000000

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