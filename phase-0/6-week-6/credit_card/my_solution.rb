# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a 16 digit number
# Output: true or false, whether or not the number is valid
# Steps: Make sure the number is 16 digits, if it is, accept the new object.
#        Next double every even index'd value. Then add every single digit
#        together, where 16 is 1 + 6. Return true or false if the sum is a
#        multiple of 10.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
def initialize card_number
  if card_number.to_s.length == 16
    @card_number = card_number
else
  raise ArgumentError.new("card number must be 16 digits!")
  end
end
  def check_card
    card_doubled = double_every_other
    total = sum_all card_doubled
    if total%10 == 0
      return true
    else
      return false
    end

  end
  def double_every_other
    temp = @card_number.to_s.dup.split("")
    x=0
    temp.map! do |el|
      new_val = el.to_i
      new_val =  new_val * 2 if x%2 == 0
      x+=1
     new_val
    end
    temp
  end


  def sum_all card_num_array
    sum = 0
    card_num_array.each do |el|
      if el >= 10
        temp = el.to_s.split('')
        temp.each do |el|
          sum += el.to_i
        end
      else
        sum += el
      end
    end
    sum
  end
end


card = CreditCard.new(1232468303284759)
card.check_card
=end
# Refactored Solution

class CreditCard
  def initialize card_number
    if card_number.to_s.length == 16
      @card_number = card_number
    else
      raise ArgumentError.new("card number must be 16 digits!")
    end
  end
  def check_card
    card_doubled = double_every_other
    total = sum_all card_doubled
    total % 10 == 0 ? true : false
  end
  def double_every_other
    temp = @card_number.to_s.dup.split("")
    new_val = []
    temp.each_with_index do |el, i|
      new_val[i] = i%2==0 ? el.to_i * 2 : el.to_i
    end
    new_val
  end
  def sum_all card_num_array
    sum = 0
    card_num_array.each do |el|
      if el >= 10
        temp = el.to_s.split('')
        temp.each do |el|
          sum += el.to_i
        end
      else
        sum += el
      end
    end
    sum
  end
end







card = CreditCard.new(1232468303284759)
card.check_card