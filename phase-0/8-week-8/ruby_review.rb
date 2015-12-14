# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
  # create a car class that has the methods drive, stop, turn, accelerate
  # and decellerate, log_distance. Need properties speed, total_distance,
  # direction.


# 3. Initial Solution
=begin
class Pizza
  attr_reader :turns_cold
  def initialize type, ready_time
    @type = type
    @ready_time = ready_time
    @turns_cold = ready_time + 30
  end
end
class Car
  attr_reader :speed
  attr_reader :model
  attr_reader :direction
  attr_reader :latest_action
  attr_reader :total_distance
  def initialize (model, color, pizza)
    @model = model
    @color = color
    @speed = 0
    @total_distance = 0.0
    @direction = 0
    @current_distance = 0
    @is_driving = false
    @latest_action = 'initialized a #{color} #{model} car'
    @pizza = pizza
  end
  def drive distance, speed
    @is_driving = true
    @current_distance = distance.to_f
    log(distance)
    @speed = speed
    @latest_action = 'driving for #{distance} miles at #{speed} mph.'
  end
  def accelerate mph
    @speed = mph unless mph < @speed
    @latest_action = 'accelerating'
  end
  def decelerate mph
    @speed = mph unless mph > @speed
    @latest_action = 'decelerating'
  end
  def turn_left
    @direction -= 90
    @latest_action = 'turned left'
  end
  def turn_right
    @direction += 90
    @latest_action = 'turned right'
  end
  def stop
    @is_driving = false
    @latest_action = 'stopped'
  end
  def log distance
    @total_distance += distance
  end
  def pizza_cold?
    return true if @pizza.turns_cold < Time.now()
    false
  end
end

=end


# 4. Refactored Solution

class Pizza
  attr_reader :turns_cold
  def initialize type, ready_time
    @type = type
    @ready_time = ready_time
    @turns_cold = ready_time + 30
  end
end
class Car
  attr_reader :speed
  attr_reader :model
  attr_reader :direction
  attr_reader :latest_action
  attr_reader :total_distance
  def initialize (model, color, pizza)
    @model = model
    @color = color
    @speed = 0
    @total_distance = 0.0
    @direction = 0
    @current_distance = 0
    @is_driving = false
    @latest_action = 'initialized a #{color} #{model} car'
    @pizza = pizza
  end
  def drive distance, speed
    @is_driving = true
    @current_distance = distance.to_f
    log(distance)
    @speed = speed
    @latest_action = 'driving for #{distance} miles at #{speed} mph.'
  end
  def accelerate mph
    @speed = mph unless mph < @speed
    @latest_action = 'accelerating'
  end
  def decelerate mph
    @speed = mph unless mph > @speed
    @latest_action = 'decelerating'
  end
  def turn_left
    @direction -= 90
    @latest_action = 'turned left'
  end
  def turn_right
    @direction += 90
    @latest_action = 'turned right'
  end
  def stop
    @is_driving = false
    @latest_action = 'stopped'
  end
  def log distance
    @total_distance += distance
  end
  def pizza_cold?
    return true if @pizza.turns_cold < Time.now()
    false
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
veggie_pizza = Pizza.new('veggie', Time.now())
benzo = Car.new('Mercedes Benz', 'Black on Black on Black', veggie_pizza)
benzo.drive(0.25, 25)
benzo.stop()
benzo.turn_right
benzo.drive(1.5,35)
benzo.decelerate(15)
benzo.drive(0.25,35)
benzo.turn_left()
benzo.drive(1.4,35)
benzo.stop()

puts benzo.total_distance
puts benzo.pizza_cold?






# 5. Reflection

#What concepts did you review or learn in this challenge?
  # Writing classes, and working with them. Also, using an instance as
  # an argument for another class.
#What is still confusing to you about Ruby?
  # Some higher level things that we have not gone over yet. I looked
  # at some ruby code from a difficult question on stackoverflow, and
  # I was lost.  All the stuff that this course has covered, I feel
  # I am pretty clear on. I'm looking forward to taking it to the
  # next level.
#What are you going to study to get more prepared for Phase 1?
  # I am going to keep working on my personal projects, I hope this will
  # keep me fresh coming into the course. I can't wait to start!