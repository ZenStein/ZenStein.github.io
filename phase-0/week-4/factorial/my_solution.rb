# Factorial

def factorial int

    result = int
    for i in 1...int
        result *= (int - i)
    end
    int == 0 ? 1 : result
end



#puts factorial(5)
# I worked on this challenge [by myself, with: ].
