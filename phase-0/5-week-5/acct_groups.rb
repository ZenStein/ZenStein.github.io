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
# 1. Initial Solution(check commits) + refractor

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


__END__
# 3. Refactored Solution


# 4. Reflection
What was the most interesting and most difficult part of this challenge?
  The most interesting was the shuffle method I wrote. I used no built in methods,
  and it took me a while. I am aware there is a .shuffle method that would have saved
  me some time. The most difficult part of this is on line 71. I got the array to shuffle
  on one iteration. Once I added more though, the code wasn't working. I learned that when
  you set something to equal something in ruby, it shares the reference, I thought I was
  only setting it to the value. Using .dup made the copy that I needed.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Yes. I like writing pseudocode, even though I usually end up with something different, than
  what I first had thought. I'm sure I will get better with more experience. Even though,
  writing out the pseudo has been beneficial as it gives me a base to work off of.
Was your approach for automating this task a good solution? What could have made it even better?
  It's a little sloppy. I could have extracted it a bit further to make it more readable.
  I also could allow the user to input his desired group number goal.  I have this hard
  coded in for now, adding this feature would make it more dynamic.
What data structure did you decide to store the accountability groups in and why?
  I used an array for the data and my 'shuffle map' and I used a hash for the grouping
  part of the logic.  I then went through every key in the hash, and set the  values
  to the corresponding shuffled index.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I refactored as I went along, I'm not sure if this is a good solution, however I feel that
  when I write things that I know I am going to change later, I end up creating a rats
  nest when I go back.  It seems to make sense to do it then.  I usually refactor when after I'm done,
  I notice something that can be better. If I notice something that I can improve while I'm writing, I do it then.
  I learned there is a shuffle method and a dup method.


