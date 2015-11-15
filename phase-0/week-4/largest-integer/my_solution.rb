# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
initial = list_of_nums.kind_of?(Array) && list_of_nums[0] != nil ? 0 : nil

return initial if initial == nil

for i in 0...list_of_nums.length
    curr_val = list_of_nums[i] if list_of_nums[i].instance_of? Fixnum
    initial = curr_val if i == 0 || initial < curr_val
end

initial
end