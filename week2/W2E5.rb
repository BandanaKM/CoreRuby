=begin
THIMK

b. What happens in the following Ruby code?


x = 10
y = 20
x, y = y, x
puts x
puts y
=end

=begin

The index order of values on the left of the "=" sign will be set to the matching index order on the right.

=end

=begin 
answer
x,y=y,x
it first assings x the value y and the y the value x. So its doing the assignments in parrallel, hence we see the swap in values
=end