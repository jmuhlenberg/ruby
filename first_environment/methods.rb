# load this file into pry by using:
# require "./path/to/file.rb"
# require_relative "file" - tacks on the rb
# load "./file.rb"

puts "loading methods..."

##################################################
# Basic Methods

# def/end blocks let us define methods
def my_first_method
  return [true, false].sample # will return one item of the array randomly
end

# running 'load "./methods.rb"' will always return the first argument. You have to call the method in order for it to work properly.

# Ruby does not require a return statement
def my_second_method
  [true, false].sample # last line of code is the default return
end

def my_third_method
  return 3

  my_second_method #this will not run because of the return statement on line 21
end

#if you store the method into a variable, the variable becomes the output of the method. basically the reason () are not required to instantiate the method or call the method.



##################################################
# Methods with params

def needs_params(param_one, param_two)
  [param_one, param_two].sample
end
#when calling the function with parameters () are optional - until more arguments come into play
# needs_params(10, 3) will be the same as needs_params 10 3
# this ex needs parameters - needs_params(10,3) + needs_params(7,3)
# you can have nested methods, just like JS - needs_params(needs_params(10, 3), 7)



##################################################
# Methods with defaults

def has_defaults(param_one, param_two = true)
  [param_one, param_two].sample
end
# the method only needs to have one argument because the second it being defaulted to true.
# has_defaults(10) will return either 10 or true

puts "methods available..."
