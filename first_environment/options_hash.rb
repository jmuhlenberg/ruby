################################################
# Options Hash

def optional(one, two, opts = {})
  puts one
  puts two
  puts opts
end

# only requires two parameters - the final parameter is optional. if left empty, it will return an empty hash, but if there are multiple parameters it will automatically add them into the hash.
optional(1, 2) # => 1 2 {}
optional(1, 2, three: 3, four: 4) # => 1 2 {:three=>3, :four=>4}


def say_it(str, opts={})
  result = str

  if opts[:shout]
    result = result.upcase

  end

  if opts[:reverse]
    result = result.reverse
  end

  return result
end

say_it("hello there", shout:true)
# => HELLO THERE

say_it('hello there', reverse:true)
# => ereht olleh

say_it("hello there", shout:true, reverse:true)
# => EREHT OLLEH


#################################################
# Symbols and Hash Rockets

#Sybmols

# a data type with ":" before it is a symbol - used in hashes
a = {one: 1, two: 2, three: 3}
a[:one] # => 1

# you can enter data into a hash without using symbols, but symbols are unique
b = {"this" => 1, "that" => 2}

c = "this"
d = "this"

#doing c.object_id and d.object_id they have unique identifiers, but if you do:
c = :this
d = :this
c.object_id
d.object_id
#these will share the same unique identifier. symbols are allocated only once in memory. it's beneficial to use symbols as often as possible.


#Hash Rockets
e = {3 => 5, 7 => 10}
#these are an outdated way to write hashes and hardly used now.
