# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# my pseudocode was done by hand for this exercise

# Initial Solution
# class NumToWord
#   def initialize number
#     @number = number
#     @position = ['ones','tens','hundreds','thousands']
#     @reverse_position = @position.reverse
#     @length = number.to_s.length
#     @number_string = number.to_s
#     ones = ['',:one,:two,:three,:four,:five,:six,:seven,:eight,:nine]
#     tens = ['',:teen,:twenty,:thirty,:forty,:fifty,:sixty,:seventy,:eighty,:ninety]
#     @unique = {0=>' zero',10=>' ten',11=>' eleven',12=>' twelve',13=>' thirteen',15=>' fifteen'}
#     @unique_word = nil
#     @number_array = @number_string.split('')
#     @reverse_number_array = @number_array.reverse
#     @number_words = {
#       'ones'=>lambda {|x|
#         return '' if x.to_i == 0
#        "#{ones[x.to_i]}"
#      },
#      'tens'=> lambda {|x|
#        return '' if x.to_i == 0
#         "#{tens[x.to_i]}"
#      },
#      'hundreds'=>lambda {|x|
#        return '' if x.to_i == 0
#         " #{ones[x.to_i]} hundred"
#      },
#      'thousands'=>lambda {|x|
#         " #{ones[x.to_i]} thousand"
#      }
#     }
#     is_unique_num?
#   end
#
#   def in_words
#     #return @unique_word if @unique_word
#     #array = []
#     obj = {}
#     string = ''
#     @reverse_number_array.each_with_index { |number, position_number|
#       # array.push(@number_words[@position[position_number]][number.to_i])
#       obj[@position[position_number]] = get_positions_num_word(number, &@number_words[@position[position_number]])
#     }
#     arr = []
#     @reverse_position.each{|position|
#       arr.push(" #{obj[position].to_s}")
#     }
#
#     if obj['tens'] == 'teen'
#       if @length == 2
#         if is_unique_num?
#           return @unique_word
#         else
#           return obj['ones'].to_s + :teen.to_s
#         end
#       end
#       if @length > 2
#           arr.slice!(-2,2)
#         if is_unique_num?
#           return arr.push(@unique_word).join(' ')
#         else
#           return arr.push(obj['ones'].to_s + :teen.to_s).join(' ')
#         end
#
#       end
#
#
#       #   arr = string.split(' ')
#       #   length = arr.length
#       #   last = length-1
#       #   second_last = length-2
#       #   arr.delete_at last
#       #   arr.delete_at second_last
#       # if is_unique_num?
#       #   arr.push(@unique_word)
#       #   string = arr.join(' ')
#       # else
#       #   string = obj['ones'].to_s + :teen.to_s
#       # end
#     end
#     arr.join(' ')
#   end
#
#
#   def get_positions_num_word number, &position_name
#     position_name.call(number)
#   end
#   def is_unique_num?
#     last_two_digits = ''
#     unique_num = nil
#     if @length > 1
#       for i in (@length-2).upto(@length-1)
#         last_two_digits += @number_string[i]
#       end
#       unique_num = last_two_digits.to_i
#       @unique_word = @unique[unique_num] unless @unique[unique_num] == nil
#     end
#     @unique_word = @unique[0] if @number == 0
#     #@unique_word = nil if @length > 2 && unique_num == 10
#
#
#     return @unique_word == nil ? false : true
#     # return unique_num != false && @unique[unique_num] != nil ? @unique[unique_num] : false
#   end
# end
#
#
# def single_to_word number
#
# end
# def double_to_word number
#
# end
# def triple_to_word number
#
# end


# Refactored Solution

class NumToWord
  def initialize number
    @number = number
    @number_string = number.to_s
    @length = number.to_s.length
    @position = ['ones','tens','hundreds','thousands']
    ones = ['',:one,:two,:three,:four,:five,:six,:seven,:eight,:nine]
    tens = ['',:teen,:twenty,:thirty,:forty,:fifty,:sixty,:seventy,:eighty,:ninety]
    unique = {0=>'zero',10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',15=>' fifteen'}
    @reverse_position = @position.reverse
    @unique_word = nil
    @nums_revrsd = number.to_s.split('').reverse
    number_words = {
        'ones'=>lambda {|x|
          return '' if x.to_i == 0
          "#{ones[x.to_i]}"
        },
        'tens'=> lambda {|x|
          return '' if x.to_i == 0
          "#{tens[x.to_i]}"
        },
        'hundreds'=>lambda {|x|
          return '' if x.to_i == 0
          " #{ones[x.to_i]} hundred"
        },
        'thousands'=>lambda {|x|
          " #{ones[x.to_i]} thousand"
        }
    }
  end

  def in_words
    place_vals = {}
    nums_as_words = []

    @nums_revrsd.each_with_index { |number, position|
      digit = @position[position]
      place_vals[digit] = num_to_word(number, &number_words[digit])
    }

    @reverse_position.each{|position|
      nums_as_words.push(" #{place_vals[position].to_s}")
    }

    if place_vals['tens'] == 'teen'
       nums_as_words.slice!(-2,2)
        if is_unique_num?
          nums_as_words.push(@unique_word)
        else
          nums_as_words.push(place_vals['ones'].to_s + :teen.to_s)
        end
    end
    nums_as_words.join(' ').gsub(/\s+/, ' ')
  end

  def num_to_word number, &position_name
    position_name.call(number)
  end

  def set_place_vals

  end

  def is_unique_num?
    last =  @number_string[@length-1]
    second_last =  @length > 1 ? @number_string[@length-2] : ''
    unique_num = (@number_string[last] + @number_string[second_last]).reverse.to_i
    @unique_word = unique[unique_num] unless unique[unique_num] == nil
    return @unique_word == nil ? false : true
  end
end








# Driver Code






for i in (0).upto(2100)
one = NumToWord.new(i)
puts one.in_words

end
puts 'cleareeeeed new'







# Reflection