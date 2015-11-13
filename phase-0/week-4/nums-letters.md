
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