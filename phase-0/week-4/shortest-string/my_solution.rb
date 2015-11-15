# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
initial = list_of_words.kind_of?(Array) && list_of_words[0] != nil ? '' : nil

return initial if initial == nil

for i in 0...list_of_words.length
    curr_val = list_of_words[i] if list_of_words[i].instance_of? String
    puts list_of_words[i].instance_of? String
    initial = curr_val if i == 0 || initial.length < curr_val.length
end

initial
end

#puts shortest_string(['cat', 'zzzzzzz', 'apples'])