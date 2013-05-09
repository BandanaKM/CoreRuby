=begin
Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:

bark(), eat(), chase_cat()
I shall create the Dog object as follows:
d = Dog.new('Leo')
=end

class Dog
	attr_accessor :name, :tricks

	def initialize(name)
      @name = name 
      @tricks = {}
	end
  
  def teach_trick(sym, &block)
    @tricks[sym] = block.call
    
  end
  
  def method_missing(instance_id)
      "#{@name} doesn't know how to #{instance_id}!"
  end
end

d = Dog.new('Leo')
puts d.teach_trick(:dance) {"#{@name} is dancing!"}
puts d.dance

puts d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo

=begin
  
You can store the Proc in an instance variable that contains a hash of tricks. That might be one option.
Also, there are things that let you evaluate strings into code... not surprisingly, they have names such as eval, instance_eval, etc.
When you use a form of 'eval', it makes real methods, and so will utilize respond_to? method. With the tricks stored in a hash idea, you may use something like method missing and write your own responds_to? method to accommodate these things.
Many choices, which is perhaps part of the problem with solving this challenge, but it also means you can determine the best approach of the given situation.
I hope that helps.
  
=end
