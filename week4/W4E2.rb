=begin
EWrite a Rectangle class. I shall use your class as follows:

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
=end

class Rectangle
  attr_accessor :side1, :side2
  
  def initialize(side1, side2)
    @side1 = side1
    @side2 = side2
  end

  def area
    @side1 * @side2
  end
  
  def perimeter
    @side1*2 + @side2*2
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"