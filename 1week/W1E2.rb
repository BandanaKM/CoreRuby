puts "%05d" % 123
puts sprintf("%05d", 123)
puts format("%05d", 123)
puts sprintf("%05i", 123)


=begin

STRINGS 
sprintf takes an integer and returns a modified string.

d is a width modifier - meaning the number of characters wide.

When we set the width to 5, we will be filing in 0's in front
of the agrgument (123) until the result is 5 characters wide.


str % arg - is also a STRING method, but can be used on 
HASHES AND ARRAYS

"_formatting_in_sprintf_characters_" %  [ array with strings/objects ]
"_formatting_in_sprintf_characters_" %  { hash with strings/objects }

=end