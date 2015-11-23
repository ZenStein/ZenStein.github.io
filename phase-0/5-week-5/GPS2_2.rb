# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# [fill in any steps here]
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: string 'item name', int [quantity]
# steps:  take hash @ [param1] and set eqaul to quantity or 1
# output: bool upon success

# Method to remove an item from the list
# input: string referencing item to be deleted
# steps: check to see if item is in the list, if it is, delete it
# output: bool upon success

# Method to update the quantity of an item
# input: item to update
# steps: take input and add it to the hash
# output: bool upon success or maybe new updated item

# Method to print a list and make it look pretty
# input: list
# steps: format the list to a nive readable list
# output: the nice readable list


def create_list list
  temp = list.split(' ')
  grocery_list = Hash.new
  grocery_list.default = nil
  temp.each{|el|  grocery_list[el] = 1}
  grocery_list
end

def add list, list_item, quantity=1
  list[list_item] = quantity
end

def remove list, list_item
  list.delete(list_item)
end

def update list, list_item, quantity
  #check if the thing exists
  if list[list_item] != nil
    list[list_item] += quantity
  else
    add(list, list_item, quantity)
  end
  #now if the quantity on the list is less than 1, we might as well delete it
  remove(list, list_item) unless list[list_item] > 0

  list
end

def print_list list
  x = 1
  list.each{|item, quantity|
    puts "#{x}.) #{item}: #{quantity}"
    x += 1
  }

end
list = "carrots apples cereal pizza"
hash_list = create_list list
add(hash_list, 'Lemonade', 2)
add(hash_list, 'Tomatoes', 3)
add(hash_list, 'Onions', 1)
add(hash_list, 'Ice Cream', 4)
puts hash_list
remove(hash_list, 'Lemonade')
puts hash_list
update(hash_list, 'Ice Cream', -3)
puts hash_list
print_list hash_list
puts hash_list
# Create a new list
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?




__END__

#reflection was done verbally with Guide!!