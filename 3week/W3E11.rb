=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.
=end

def odd_or_even(array)
  array.map do |number|
    number % 2 == 0 ? "#{number} is even" : "#{number} is odd"
  end
end
 
collection = [12, 23, 456, 123, 4579]
puts odd_or_even(collection)