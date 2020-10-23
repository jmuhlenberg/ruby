###############################
# loops
###############################


################
# while
x = 5
while x < 10 #condition
  puts x #execute code
  x+=1
end


puts "WHILE over. UNTIL starting..."
################
# until

until x < 2
  puts x
  x-=1
end


puts "UNTIL over. LOOP DO starting..."
################
# loop do

count = 10

loop do
  puts count
  count -= 1

  break if count == 0
end

puts "LOOP DO over. FOR loop starting..."
##################
# for loop

for value in (4..8) #can do ranges, arrays
  puts value ** 2
end
