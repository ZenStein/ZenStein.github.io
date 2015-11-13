
```ruby

        hour = 1
  dayInHours = hour * 24
 weekInHours = dayInHours * 7
 yearInHours = weekInHours * 52
      minute = 1
  hourInMins = minute * 60
   dayInMins = hourInMins * 24
   weekInMin = dayInMins * 7
  yearInMins = weekInMin * 52
decadeInMins = yearInMins * 10


print 'There are '      + yearInHours.to_s  + ' hours in a year, '
puts ' and there are ' + decadeInMins.to_s + ' minutes in a decade!'

```
#What does puts do?#
puts returns nill, then writes to console with newline
#What is an integer? What is a float?#
An integer as any whole number. A whole number is a number that has no decimal point.
An integer is a number that has a decimal. Or a fraction that results in a remainder.
#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?#
Difference xplained above. In terms of coding, decimals can get a bit tricky. They require you to specify the
'precision' which is how many places past the decimal you wish to go. for example, if you are
coding something like a register, you don't want to tell a customer that their total is
$33.333333333. In this case you would set the precision to 2, and the outcome would be $33.33.


##Reflection##
[simple strings](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/week-4/simple-string.rb)
[defining variables](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/week-4/defining-variables.rb)
[basic math](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/week-4/basic-math.rb)
#How does Ruby handle addition, subtraction, multiplication, and division of numbers?#
using + - * and /
#What is the difference between integers and floats?#
look above ^^
#What is the difference between integer and float division?#
look above ^^
#What are strings? Why and when would you use them?#
strings are groups of characters that usually form words andid's
#What are local variables? Why and when would you use them?#
a local variable is a name that you put on a string, bool, int etc. And local refers to
the current environment assignments
#How was this challenge? Did you get a good review of some of the basics?#
too basic.