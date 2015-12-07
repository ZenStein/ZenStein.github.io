# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# means take the code from said file and bring it here, and the path is relative to the file calling it.
require_relative 'state_data'

# class VirusPredictor
# #  runs when new'd and sets the arguments to it's instance variables.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end
# # runs two of it's own methods which do calculations.
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end
#
#   private
# # gives a estimate of potential deaths which is proportionally related to population
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end
#
#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
#
#   end
# # time in which the virus will spread based on density
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0
#
#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
#
#     puts " and will spread across the state in #{speed} months.\n\n"
#
#   end
#
# end



#Refactored

class VirusPredictor
#  runs when new'd and sets the arguments to it's instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @death_factor = population_density/50 * 50
  end
# runs two of it's own methods which do calculations.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
# gives a estimate of potential deaths which is proportionally related to population
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
  density_margin = 200
  factor = 0.05
  for i in (4).downto(1)
    if @population_density >= density_margin
      factor = i/10.0
      break
    end
  density_margin-=50
  end
  number_of_deaths = (@population * factor).floor

  print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# time in which the virus will spread based on density
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


STATE_DATA.each {|state_name, state_data|

state = VirusPredictor.new(state_name, state_data[:population_density], state_data[:population])
state.virus_effects

}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section