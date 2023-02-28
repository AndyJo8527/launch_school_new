# PROMPT #
  # method that takes one arguyment:
  #   total number of switches
  #   returns an array that identifies which lights are on
  #     after n repetitions

  # how switches work
  #   starts with all off
  #   2. all turn on (first iteration through)
  #   3. then 2, 4, 6, etc.
  #   4. 3, 6, 9
  #   5. 4, 8, 12
  #   6. 5, 10, 15
  #   7. 6, 12, 18

  # PLAN ##
    # method that takes a number as an argument
    # make a hash or an array based on n to work with maybe n can be the keys?
    # set up an order for how the switches are turned on and off
    # pass# == increments it's going by (each_with_index and use index to determine the count) maybe start with loop
    # increase incriment by one and go through again
    # 


## METHODS AND VARIABLES ##

require 'pry'

def switch_light(value)
  if value == true
    value = false
  else
    value = true
  end
  value
end

def on_off(switches, on_switches)
  switches.each do |key, value|
    if value == true
      on_switches << key
    end
  end
end

def lights(n)
  switches = (1..n).to_a.product([false]).to_h
  increment = 1
  on_switches = [ ]
  loop do
    break if increment > n
    switches.map do |key, value|
      if key % increment == 0
        value = switch_light(value)
      end
      switches[key] = value
    end
    increment += 1
  end
    on_off(switches, on_switches)
    on_switches
end


### PROGRAM AND EXAMPLES ###

p lights(5) == [1, 4]

p lights(10) == [1, 4, 9]

p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

##### PROVIDED SOLUTION #####

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)
