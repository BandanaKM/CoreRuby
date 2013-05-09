=begin
Exercise4. Given the following Ruby code snippet:
a = (1930...1951).to_a
puts a[rand(a.size)]

When you run this program, which of the following values will not be displayed?
1929
1930
1945
1950
1951
1952
Explain why that value will not be displayed.

Also, have a look at the splat operator:
a = [*1930...1951] # splat operator
=end

a = (1930...1951).to_a
puts a[rand(a.size)]
# ... is exclusive of the high-end range limit value, plus anything beyond that. 
# 1951 and 1951 are not included.
 
a = [*1930...1951]
puts a[rand(a.size)]
# The splat operator does the same thing as the code above, 
# turning each value in the range into a separate array item. 
# Without the *, it returns [1930...1951]