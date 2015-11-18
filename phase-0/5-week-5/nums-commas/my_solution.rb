


# 1. Initial Solution
#
# def separate_comma int
#    input_s = int.to_s
#    returned_input = ''
#    i = 0
#    start = input_s.length % 3
#    for i in 0...input_s.length
#        if  i !=0 && (start == i || (i - start)%3 == 0)
#            returned_input += ',' + input_s[i]
#        else
#            returned_input += input_s[i]
#        end
#        i += 1
#    end
#    returned_input
# end




# 2. Refactored Solution

class IntHandler
    attr_reader :commified
    def initialize int
        @stringified = int.to_s
        @arrayified = int.to_s.split('')
        @length = int.to_s.length
        @offset = @length % 3
    end

    def commified
        commified = ''
        index = TrackIndex.new
        @length.times do
            commified += commify index.next
        end
       commified
    end

    def commify index
        (index != 0 && index%3 == @offset && @length > 3) ? ',' + @stringified[index] : @stringified[index]
    end

end

class TrackIndex
  def initialize
    @count = 0
    @kickstarted = false
  end

  def next
    @count += @kickstarted == false ? 0 : 1
    @kickstarted = true
    @count
  end
end

def separate_comma int
    input = IntHandler.new(int)
    input.commified
end

#testing output
i = 1
10.times do
puts separate_comma i
i *=10
end

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
    What was your process for breaking the problem down? What different approaches did you consider?
        My basic idea was to iterate each character and decide whether or not that
        the cahracter needs to be proceeded by a ','. The two ways that I considered were
        1) .split('') the string version and visit each index then returning with .join()
        2) setting a new variable to an empty string, then appending on the either the current
           char or ',' + char

    Was your pseudocode effective in helping you build a successful initial solution?
        Yes it was effective, and I had to reference my pseudocode a few times to remember
        the intention behind my methods.

    What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
        I decided to write an IntHandler and IndexTracker class. I decided this for two reasons, I thought
        it would be cool to see how to write classes in ruby, and my code was looking a little
        repetetive. I found the ruby docs helpful, but I mainly use stackoverflow, or
        other peoples blogs to find my answers.  If I know exactly what I am looking for, I go
        to the docs. If I'm looking for more conceptual/best practice stuff, I like to see what I can
        find, and hopefully avoid some of the pitfalls. Using the built in methods can be nice because they
        allow you to write your code without having to deal with so much internal logic and testing.
        However, the best way for me to get an understanding is to write out that logic. It helps me
        see why / how certain things are done in certain ways.

    How did you initially iterate through the data structure?
        for i in 0...length
    Do you feel your refactored solution is more readable than your initial solution? Why?
        Yes I do, looking at the function, it's clear to see that I am defining an integer parameter,
        that is passed to a class that acts as a handle, then returning it's .commafied property.
        Going deeper, the code is much easier to read as well. Upon initialization, I set all
        the properties I will be using.  You end up seeing a lot more readable words, and less
        formulas or equations. Also, seeing the '@' helps the reader get a grip on whats what.
