# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
    values = [a.to_f**2,b.to_f**2,c.to_f**2]

    for x in 0...3
        y = (x + 1)%3
        z = (x + 2)%3
        flag = true if ( (values[x] + values[y] == values[z]) ||

                        (a == b && a == c) || ( (b == c && b == a) || (a==b || b ==c || c == a) ) ) &&

                        a != 0 && b != 0 && c != 0 && a + b > c && c + a > b && c + b > a
    end
    flag unless !flag
end




puts valid_triangle? 5.01, 5.01, 5.01




#  I almost stopped here, but I was able to break it down a little futher!

#def valid_triangle?(a, b, c)
#    return false if a == 0 || b == 0 || c == 0 || a + b < c || c + a < b || c + b < a
#    return true if a == b && a == c
#    values = [a.to_f,b.to_f,c.to_f]
#
#    for x in 0...3
#        y = x == 0 ? 1 : x == 1 ? 2 : x == 2 ? 0 : 0
#        z = x == 0 ? 2 : x == 1 ? 0 : 1 == 2 ? 1 : 1
#
#        return 'true' if (values[x]**2 + values[y]**2 == values[z]**2)
#    end
#    return 'false'
#end