#####################################
# CLASSES
#####################################

# class is the key word that starts to define a class
class Cat
  #defining a constant variable. usable inside and oustide the class
  TOE_COUNTS = [10, 11, 12, 13]

  # 'initialize' is the constructor method. always gets run when creating a new obj
  def initialize(catName)
    # instance variables are variables with an @ first (like the this. from JS)
    @my_name = catName
    @toes = TOE_COUNTS.sample
  end


end


# to see all the methods of the Cats classes
Cats::


#to see constants of a class
Cats::TOE_COUNTS
# => [10, 11, 12, 13]




#####################################
# Instance Methods


class Dog
  TOE_COUNTS = [10, 11, 12]

  def initialize(dogName)
    @my_name = dogName
    @toes = TOE_COUNTS.sample
  end

  # define a method
  def bark
    return "Woof"
  end

  #changing the constant variables
  # def name_change(new_name)
  #   @my_name = new_name
  # end

  #WRITER METHOD
  #it's common and standard practice to see the function actually written as such:
  def my_name=(new_name)
    @my_name = new_name
  end
  #to call the function you include the '='

  #READER METHOD
  def my_name
    @my_name
  end

end

#create a new variable with the Dog class
max = Dog.new("Max")

# call the bark method
max.bark
# => "Woof"



class Bunny
  # attr is a method. reader = writing a reader method. writer = adding a writer method. accessor = acts as a reader AND writer method
  attr_reader :name
  attr_writer :age
  attr_accessor :color

  def initialize(name,age,color)
    @name = name
    @age = age
    @color = color
  end
end


peter = Bunny.new("Peter", 3, "Black")

peter.name
# => "Peter"

peter.name = "Rex"
# => this will error out because there's no writer method.




#####################################
# Self and Class Methods

class Vector
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  #because this is in the method, it's defining a class method, called on 131
  def self.add(vec_one, vec_two)
    return Vector.new(vec_one.x + vec_two.x, vec_one.y + vec_two.y)
  end



  def length
    Math.sqrt(@x*@x, @y*@y)
  end

  #this self refers to the instance because it's inside of the method
  def normalize
    new_x = @x / self.length
    new_y = @y / self.length

    return Vector.new(new_x, new_y)
  end
end

a = Vector.new(6, 10)
b = Vector.new(4, 8)

Vector.add(a,b)
# => @x=10, @y=13




#####################################
# Inheritance

class Car
  def initialize(brand)
    @brand = brand
    @type = ||= "Passenger" # ||= is the same as a = a||b
  end

  def drive
    'cruising'
  end
end

# use the '<' for child classes to inherit from parent classes
class Coupe < Car
  def initialize(brand)
    @doors = 2
    @roof = 'hard'
    #call super after all the new constants to then run the parents initialize
    super
  end
end

bmw = Coupe.new("BMW")
bmw.drive

class Convertable < Car
  def initialize(brand)
    @doors = [2, 4]
    @roof = ['soft', 'hard']
    super
  end

  def topDown
    'putting top down'
  end
end

ferrari = Convertable.new("Ferrari")
ferrari.drive
ferrari.topDown


class BoxTruck < Car
  def initialize(brand)
    @doors = 2
    @type = "Cargo"
    super
  end
end

uhaul = BoxTruck.new("Chevy")
# uhaul will have the type of Cargo instead of Passenger
