


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


puts 'there are '      + yearInHours.to_s  + ' hours in a year, '
puts ' and there are ' + decadeInMins.to_s + ' minutes in a decade!'


