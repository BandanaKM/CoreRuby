=begin
Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have. The spec. There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape. Go for it guys and show me your code.

Note: This exercise is about inheritance, method overriding and method overloading not about UI.
=end

# Problem Approach
# The shapes: square circle and triangle
# Each shape has a sound file associate with it
# Methods: click shape => shape rotates and sound file plays
# Inheritance: define one shape at a time, require/super the class above
# rotation: x' = [cos(angle) - sin(angle)] * x
#						y' = [sin(angle) - cos(angle)] * y


class ShapeBaseClass
	attr_accessor :x, :y, :rotate

	def initialize(origin_x, origin_y, rotate, sound_file)
		@x = origin_x.to_i
		@y = origin_y.to_i
		@rotate = rotate

		@sound_file = sound_file
	end

	def on_click
		self.play_sound_file
		self.rotate
	end

	def rotate # math issues here - rotate 90/180 same result, 270/380/0 same result
		radians = (@rotate * Math::PI.quo(180)).round(4)
		cos = (Math.cos(radians)).round(4)
		sin = (Math.sin(radians)).round(4)
		
		@x = (@x*cos) - (@x*sin)
		@y = (@y*sin) - (@y*cos)
	end

	def play_sound_file
		@sound_file.play
	end
end

class Square < ShapeBaseClass
end

class Circle < ShapeBaseClass
end

class Triangle < ShapeBaseClass
end

test = ShapeBaseClass.new(0, 0, "soundfile")
test.rotate
test.play_sound_file
test.on_click

square = Square.new(0, 0, "./square.aiff")
square.on_click
circle = Circle.new(0, 5, "./circle.aiff")
circle.on_click
triangle = Triangle.new(0, 10, "./triangle.aiff")
triangle.on_click