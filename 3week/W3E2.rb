=begin
Thanks to Marcos Souza for this exercise. A plain text file has the following contents:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
 
Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test inserted word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
 
Do not hard-code the file name.
 
=end

new_word = "inserted word"

file = File.read('W3E2_text.txt')
# set the contents of 'W3E2_text.txt' in the variable "file"
# contents stored as a string
replace = file.gsub(/word/, new_word)
# global subsitution on "file"
# modified contents set to variable "replace"
File.open('W3E2_text.txt', 'r+') {|file| file.puts replace}
# opening the file in a way that read, writes, but does not truncate
# writes "replace" contents to file by printing it