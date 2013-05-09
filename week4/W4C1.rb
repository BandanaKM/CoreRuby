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
    @tricks[sym] = block
  end

  def respond_to_missing?(meth, *args )
    !!@tricks[meth]
  end

  def method_missing(meth, *args, &blk)
    if @tricks[meth]
      @tricks[meth].call(args)
    else
      "#{@name} doesn't know how to #{meth}!"
    end
  end

  def list_tricks
    @tricks.inspect
  end
end

d = Dog.new('Leo')
puts d.respond_to_missing?(:hula)
puts d.hula

puts "=" * 30
d.teach_trick(:dance) {|color| "#{d.name} is dancing #{color} dance!"}
puts d.dance("blue")

d.teach_trick(:poo) { "#{d.name} is a smelly doggy!" }
puts d.poo
puts d.list_tricks
=begin

You can store the Proc in an instance variable that contains a hash of tricks. That might be one option.
Also, there are things that let you evaluate strings into code... not surprisingly, they have names such as eval, instance_eval, etc.
When you use a form of 'eval', it makes real methods, and so will utilize respond_to? method. With the tricks stored in a hash idea, you may use something like method missing and write your own responds_to? method to accommodate these things.
Many choices, which is perhaps part of the problem with solving this challenge, but it also means you can determine the best approach of the given situation.
I hope that helps.

=end
