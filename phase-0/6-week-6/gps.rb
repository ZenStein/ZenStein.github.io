# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
ingredients_to_use = {'cookie'=>'chocolate chips', 'cake'=>'chocolate icing', 'pie'=>'cherries'}
#*********************************************************
    #*** Logical unit 1 ***#
unless library.has_key?(item_to_make)
  raise ArgumentError.new("#{item_to_make} is not a valid input")
end
#*********************************************************
    #*** Logical unit 2 ***#
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
#*********************************************************
    #*** Logical unit 3 ***#
  case remaining_ingredients
    when 0
      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
    else
      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: " + ingredients_to_use[item_to_make]
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


__END__
#  Reflection

What did you learn about making code readable by working on this challenge?
  Using Ruby built in methods can save you from having to figure
  out a lot of logic, and can keep your code more readable
Did you learn any new methods? What did you learn about them?
  I learned about the has_key? method.  This takes in a value and
  return a bool based on whether or not that hash contains that key.
What did you learn about accessing data in hashes?
  How to have the data interpolated into a string
What concepts were solidified when working through this challenge?
  Finding built in mehtods to simplify your code!