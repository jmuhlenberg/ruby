########################################
# Conditionals

########################
# if / else

if 5>10
  puts "5 is sooo big"
else
  puts "5 is pretty little"
end

# if / elsif / else

if 5>10
  puts "5 is sooo big"
elsif 5 > 3
  puts "5 is medium"
else
  puts "5 is pretty small"
end


# you can write simple if statements on one line:
puts "wow, this is cool" if 2 > 1


###################################
# unless

unless 5>3
  #run if 5>3 is false
  puts "I won't run"
end
# this didn't run because the statement is true.

puts "I love potatoes" unless "potatoes".length > 100
# typically unless is used to add readability to your code.
