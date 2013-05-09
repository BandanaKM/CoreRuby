=begin
Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:

bark(), eat(), chase_cat()
I shall create the Dog object as follows:
d = Dog.new('Leo')
=end

class Dog
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def bark
    "Woof!"
  end

  def eat
    "I eat dog bones."
  end

  def chase_cat
    "Cats are fun to chase."
  end
end

d = Dog.new('Leo')
puts d.name
puts d.bark
puts d.eat
puts d.chase_cat