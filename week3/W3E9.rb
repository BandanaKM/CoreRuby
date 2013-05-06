=begin
Exercise9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.
=end

=begin
FIRST TRY 
* suceeded but can be refractored*

sentence = gets.chomp
sentence_reverse = sentence.split(" ").reverse.join(" ")
puts sentence_reverse

SECOND TRY
sentence = gets.chomp.split(" ").reverse.join(" ")
print sentence
print sentence
=begin
The functions in the first two lines can be used in one argument.

"gets" can accept additional methods chained on afterwards (like chomp), so split, reverse, and join methods can be added on as well. I can't believe I haven't tried this before! In this case, chomp is not needed either, because nothing additional needs to show on the same line.
=end

sentence = gets.split.reverse.join(' ')