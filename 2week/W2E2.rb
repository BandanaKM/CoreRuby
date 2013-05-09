=begin
Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
def mtdarry
 10.times do |num|
 puts num
 end
end

mtdarry
and the program:

def mtdarry
 10.times do |num|
 puts num
 end
end
 puts mtdarry
=end

=begin
Observations:
It seems like when mtdarry is called for the first time, irb remembers the value returned upon exiting the method, which is 10.
The second time mtdarry is called, irb "forgets" the value inside of the mtdarry method, and returns "nil".

Thoughts:
I think the difference between calling "mtdarry" vs "puts mtdarry" is that irb evaluates the first method only. So, we are really looking at the difference between calling "mtdarry", can calling "puts". It seems like "puts" always evaluates to "nil", regardless of what's being passed through the method.
=end