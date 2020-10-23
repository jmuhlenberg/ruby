#####################################
# BLOCKS
#####################################

#learned way
['one', 'two', 'three', 'four'].each do |str|
  # each element of the array will show up in this code, with the name of str
  puts str*5
end

puts "====================================="
#possible to do this with the same effect
['one', 'two', 'three', 'four'].each { |str| puts str*5 }

puts "====================================="
#also possible with hashes
{
  "one" => 3,
  "two" => 5,
  "three" => 7
}.each { |key, value| puts key*value}

puts "====================================="

def use_block(&blk) #this do block gets sent in as a Proc (a method waiting to be called) - they have their own methods, use
  # puts blk.class
  blk.call('something', 5)
end

a = Proc.new { |x| puts x }

use_block do |x, y|
  puts x*y
end

# => somethingsomethingsomethingsomethingsomething
