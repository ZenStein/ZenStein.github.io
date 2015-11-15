# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)

    for i in 0...array_2.length
        index = array_1.length + i

        array_1[index] = array_2[i]
    end

    array_1
end









puts array_concat([1,2,3,4],[5,6,7,8])