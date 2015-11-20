# Accountability Group

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input : @Class Grouper: Array['Strings'] containing the names of the people to be grouped
# Properties : @list = instantiation argument. @length = list.length @modulus = appropiate modulus that will be used
#               to create groups of 5 or 4, with no group less than 3.
# Output: @Method groups: (getter only) Array[[Array]] Array containing Arrays of the grouped people
# Output: @Method random_num: returns a random number 1 thru length-1. will be used to represent array cut at index.
# Steps :
#          1. create class descriped above
#          2. upon instantiation, instance var list, length, and modulus will be created.
#           @method modulus
#                a. run modulus 5,4 on length
#                b. if modulus 5 = 0 or 1 or 4 accept it
#                c. if modulus 4 = 0 or 1 or 3 accept it
#          3.@method shuffle:
#               a. generate a random number between 1 and length
#               b. the number will be used to split the array, at the correlating index,  into two arrays.
#               c. then 'shuffle' by alternating from arr1 to arr2, placing that value into arr3
#               c. take arr3, and repeat from a. this will happen quite a few times.
#          4. @method groups: takes return from shuffles and groups according to @modulus returns grouped array
#
# 1. Initial Solution

class Grouper
  def initialize arr
    @list = arr
    @length = arr.length
    @group_num_goal = 5
    @modulus = arr.length % @group_num_goal
    @num_groups = group_num_finder @length/@group_num_goal, @modulus
  end
  def groups
    shuffle_map = shuffle
    z = -1
    group_id = 0
    grouped_groups = {}
    @num_groups.each { |k,v|
      v.times do |i|
        grouped_groups[i] = []
        k.times do |x|
          grouped_groups[i][x] = @list[shuffle_map[z]] #unless z >= @length
          z+=1
        end
        #group_id += 1
        #puts "group number "+ group_id.to_s + ', members: ' + grouped_groups[i].length.to_s
        #puts grouped_groups[i].to_s
      end
    }
    grouped_groups
  end
  def random_num
    (Random.rand(Time.now.strftime('%s').to_i) % (@length -2)) + 1
  end
  def shuffle
    arr = Array.new(@length){ |i| (i) }
    new_arr = []
    25.times do
      marker = random_num
      bottom_index = marker
      top_index = marker - 1
      @length.times do |i|
        even = i%2 ==0 ? true:false
        new_arr[i] = (bottom_index >= 0 && even)|| top_index >=@length-1? arr[bottom_index-=1] : arr[top_index+=1]
      end
      arr = new_arr.dup
    end
    arr
  end
  def group_num_finder quotient, mod_result

     grouped_obj = {5=>0,4=>0,3=>0}
     case mod_result
       when 0
          grouped_obj = {5=>quotient}
       when 1
         quotient == 1 ? grouped_obj = {3=>2} :
         quotient == 2 ? grouped_obj = {5=>1,3=> 2} :
         grouped_obj = {5 =>(quotient-3),4=>3}
       when 2
         grouped_obj = {5=>(quotient-1),4=>1,3=>1}
       when 3
         grouped_obj = {5=>(quotient-1),4=>2}
       when 4
         grouped_obj = {5=>quotient,4=>1}
     end
      grouped_obj.default 0
    @num_groups = grouped_obj
  end
end





names = ['Jack Abernethy','Mohammad Amin','Zollie Barnes',
         'Reuben Brandt','Dana Breen','Breton Burnett','Saundra Vanessa Castaneda',
         'Luis De Castro','Nicolette Chambers','Kerry Choy','Nick Davies','Katherine DiAngelo',
         'Adrian Diaz','David Diaz','Bob Dorff','Michael Du','Paul Dynowski','Jenna Espezua','Sean Fleming',
         'Jennifer Gilbert','Marcel Haesok','Albert Hahn','Arthur Head','Jonathan Huang','Thomas Huang',
         'Alex Jamar','Kevin Jones','Steven Jones','Coleby Kent','Caroline Kenworthy','Calvin Lang','Yi Lu',
         'David Ma','Charlotte Mane','test ','Sean Massih','Tom McHenry','Alex Mitzman','Lydia Nash','Brenda Nguyen',
         'Matthew Oppenheimer','Mason Pierce','Joe Plonsker','Mira Scarvalone','Joseph Scott','Chris Shahin',
         'Benjamin Shpringer','Lindsey Stevenson','Philip Thomas','Gary Tso','Ting Wang','Clinton Weber',
         'Monique Williamson','Regina Wong','Hanah Yendler']
grouper = Grouper.new names
puts grouper.groups

# 3. Refactored Solution


# 4. Reflection

