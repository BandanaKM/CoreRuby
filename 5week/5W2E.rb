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

	def initialize(origin_x, origin_y, rotate_degrees, sound_file)
		@x = origin_x.to_i
		@y = origin_y.to_i
		@rotate = degrees_to_radians(rotate_degrees)

		@sound_file = sound_file
	end

	def degrees_to_radians(degrees)
		(degrees.quo(180)*(Math::PI)).round(4)
	end

	def rotate # math - code executed as local methods returns correct results, but not inside class
		cos = (Math.cos(@rotate)).round(4)
		sin = (Math.sin(@rotate)).round(4)
		
		@x = (@x*cos) - (@y*sin)
		@y = (@y*cos) + (@x*sin)
	end

	def play_sound_file
		@sound_file.play #or other code to execute sound - play requires gem 'win32'
	end

	def on_click
		self.play_sound_file
		self.rotate
	end

end

class Square < ShapeBaseClass
end

class Circle < ShapeBaseClass
end

class Triangle < ShapeBaseClass
end

test = ShapeBaseClass.new(0, 0, 360, "soundfile")
test.rotate
test.play_sound_file
test.on_click

square = Square.new(1, 1, 360, "./square.aiff")
square.on_click
circle = Circle.new(5, 5, 360, "./circle.aiff")
circle.on_click
triangle = Triangle.new(0, 10, 360, "./triangle.aiff")
triangle.on_click