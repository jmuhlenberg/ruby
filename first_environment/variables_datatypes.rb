####################
# BASIC DATA TYPES #
####################

####################
# Integer / Fixnum #
1, 2, 3


#########
# Float #
1.21, 3.14


##########
# String #
"Hello"

#you can use bracket notation on a variable w/ a string variable to access the letter in that location
a='hello'
a[2] # => "l"

#you can "shovel" items to the end of a string
a << " how are you" # => "hello how are you"

#strings are mutable
a[2] = "p"
# a = "heplo"

#get items by working backwards through the string with negative numbers
a[-1] # => "o"

#you can access specific items by using commas or ranges
#commas - var[start index, number of items to return]
a[0,3] # => "hep"
#range - var[start index, number of items to return]
a[1..4] # => "eplo"
#range with specific numbers var[start index.. end index]
a[0.. 3] # => "hepl"

#############
# Trueclass #
true


##############
# Falseclass #
false


############
# Nilclass #
nil ## same as null from JS


#########
# Array #
[1, 2, 3]
#access values the same was as JS
a = [1, 2, 3]
a[2] # => 3

#methods
a.push(4) # => a = [1,2,3,4]
a.pop # => a = [1,2,3] ## removes last index from array
a.shift # => a = [2,3] ## removes first index from array
a.unshift(0) # => a = [0,2,3] ## places number from () into beginning of array
a.reverse # => a = [3,2,0] ## reverses array
a.shuffle # => a = [2,0,3] ## shuffles array
a.sample # => 3 ## returns a random value


########
# Hash #
{one: 1, two: 2, three: 3}

#replaces objects from JS with less functionality
#access values using brackets, just like arrays plus a : - cannot use . notation
b = {one: 1, two: 2, three: 3}
b[:one] # => 1

#you can bracket in with a string
b["h"]

#hashes can have any other data type inside of them as keys - arrays, other hashes - although it's generally bad practice to do so.
b[ a ] = "the key is an array from up above"
c = {1: "new", 2: "old"}
b[ 4 ] = c



##############################################
# You can use the .new syntax to instantiate a new variable (array or hash) with the number of items you specify. can add a second option to tell it what you want in the data type
x = Array.new # => []
y = Array.new(5) # => [nil, nil, nil, nil, nil]
z = Array.new(3, false) # => [false, false, false]
