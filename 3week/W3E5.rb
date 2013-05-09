=begin
Exercise5. Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains key and s2 contains value. Hint: Use some of the String functions.
=end

=begin
FIRST

s = 'key=value'

s_array = s.split(%r{=})
s1, s2 = s_array
puts s1
puts s2
=end

s1, s2 = s[0,3], s[4,5]