#####################################
# ENUMERABLES
#####################################

my_array = [5, 6, 18, 90, 15]

#####################################
# EACH

my_array.each do |item| # need a named variable inside pipes
  item += 100
  puts item # need code here
end

## original array does not change & returns the original array

my_array.each do |item|
  if item.even?
    puts 'even'
  else
    puts 'odd'
  end
end


## since the '.each' method returns something you can enumerate over it again
my_array.each do |item|
  puts item
end.each do |item|
  puts item **2
end


#####################################
# MAP

# ".map" modifies the original array and returns the new array
mod_array = my_array.map do |item|
  item ** 2
end

print my_array
print mod_array


#####################################
# hashes
my_hash = {one: 1, two: 2, three:3}

my_hash.each do |key, value|
  puts "key: ", key
  puts "value: ", value
end



#####################################
# Ranges

# (a..b) includes both a and b, and everything inbetween
# (a...b) this includes a, not b, but everything inbetween
# works for both number and alphabetical values


#####################################
# Times

3.times do |current_count| #this pipe variable is not necessary unless you want the count
  puts "hey, I'm looping" + current_count.to_s # .to_s changes the number to string
end

#####################################
# Up To

1.upto(10) do |k|
  puts k
end
#iterates including the starting variable up to and including the specified value

#####################################
