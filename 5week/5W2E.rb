=begin
Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have. The spec. There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape. Go for it guys and show me your code.

Note: This exercise is about inheritance, method overriding and method overloading not about UI.
=end

# Problem Approach
# The shapes: square circle and triangle
# Each shape has a sound file associate with it
# Methods: click shape => shape rotates and sound file plays
# Inheritance: define one shape at a time, inherit/super the class above
# rotation: x' = [cos(angle) - sin(angle)] * x
#						y' = [sin(angle) - cos(angle)] * y


module PlaySound
	def play_sound_file(sound_file)
			"#{self.class} is playing #{sound_file}"
	end
end

module Rotate
	def rotate_shape(rotation)
		"#{self.class} is rotating #{rotation}"
	end

end

class Shape
	attr_accessor :x, :y, :rotate

	include PlaySound
	include Rotate

	def initialize(origin_x, origin_y, rotate, sound_file)
		@x = origin_x.to_i
		@y = origin_y.to_i
		@rotate = rotate.to_i
		@sound_file = sound_file.to_s
	end

	def on_click
		puts "#{rotate_shape(@rotate)}"
		puts "#{play_sound_file(@sound_file)}"
	end
end

class Square < Shape
end

class Circle < Shape
end

class Triangle < Shape
end

square = Square.new(1, 1, 360, "./square.aiff")
square.on_click
circle = Circle.new(5, 5, 360, "./circle.aiff")
circle.on_click
triangle = Triangle.new(0, 10, 360, "./triangle.aiff")
triangle.on_click