=begin
Why is the output of this program:

def method
 a = 50
 puts a
end
a = 10
method
puts a
 
as shown below:

50
10
 
=end

=begin
The assigment "a = 50" seems specific to the scope within the function "method", and should be returned only when "method" is called. Anything that happens outside of the funciton "method" is seperate. 
=end