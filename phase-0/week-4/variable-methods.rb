
def say_whole_name first, middle, last

 "hello  #{first}   #{middle}   #{last}"

end
def suggest_bigger_number num

 "Really?? I like #{num.to_i + 1}, because it's BIGGER!"

end

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name= gets.chomp

puts say_whole_name(first_name, middle_name, last_name)



puts "What is your favorite number?"
number = gets.chomp

puts suggest_bigger_number



#How do you define a local variable?
# using the = which is the assignment operator
#How do you define a method?
#def SOME_METHOD SOMEPARAM1, SOMEPARAM2
#  //code here.....
#end
#What is the difference between a local variable and a method?
#a local variable refers to value that is stored in memory, a method os a function
#that is mainly used for applying operations to variables
#How do you run a ruby program from the command line?
#ruby some_ruby_file.rb
#How do you run an RSpec file from the command line?
#rspec some_rspec_file.rb
#What was confusing about this material? What made sense?
#all of it made sens, very basic, simple.
