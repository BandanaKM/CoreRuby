y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x


=begin

Results: 

False
False 
True


Associations:
If you declare x = "something", "something" will be returned.

Operator precedence: 
Ruby reads left to right, one operator at a time. "x = y or z" is the same as "(x = y) or z". 
Parenthesis can change the hierarchy, and separate "statements" in a different order. 

Thoughts:
In the case of "x = (y or z)", I thought that y (false) would be returned since it is the first variable listed in "(y or z)". 

I'm very surprised that Ruby returns true. I'm thinking there could be two things going on:
1) It's possible, that if not assignment is definitively made, Ruby will evaluate the entire statement as a true or false statement. 
2) If given an option of true or false, Ruby will default to true. 

=end

=begin


Wow, yes, after running this in irb, the exercise is different! Here's my second try:

In the first two assignments, x is set to y (false). If you call on x, false will be returned in both cases. At the same time, something else is going on. 

Ruby is reading the two phrases as: "x is assigned to y(false), now compare y(false) to z(true) using the 'or' comparator". The "or" comparator will always return true, unless both statments are false. I think this is why irb returns "true". 

In the third statement, it seems like x is being assigned to the evaluation of a boolean(true/false) argument. "y(false) or z(true)" returns true. Now, we are assigning x to "true". When we call on x, "true" will be returned because it is the last assignment made.
=end