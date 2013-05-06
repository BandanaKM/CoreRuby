=begin

Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. 
This method should return the temperature in degrees Celsius. 
To format the output to say 2 decimal places, we can use the Kernel's format method. 
For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. 
Another way is to use the round function as follows: 
puts (x*100).round/100.0
Discuss these exercises in the Week 1 Forum.

=end

=begin
TAKE 1

def convert(temp_f)
  temp_f = (temp_f-32).quo(9)*5
  "%.2f" % temp_f
end

puts convert(79)


TAKE 2
def convert(temp_f)
    temp_f = (temp_f-32).quo(9)*5
    precision = "%.2f"
    precision % temp_f
end

degrees_in_f = 79
answer = convert(degrees_in_f)
puts answer

=end

def convert(temp_f)
    temp_f = (temp_f-32).quo(9)*5
end

degrees_in_f = 79
precision = "%.2f"
degrees_in_c = precision % convert(degrees_in_f)

puts "#{degrees_in_f} degrees F is equal to #{degrees_in_c} degrees C"