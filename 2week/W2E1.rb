=begin
Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

>ruby tmp.rb
Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.
>Exit code: 0


# Problem Approach:
# Knowns: Each sentence is printing on a separeate line. Sentences 2 and 3 have a line break (\n) at the beginning. 

# 1. Put string in tmp.rb. Try to print out the contents of s.
# =>  In terminal, go to directory first. Enter IRB, then type in "ruby tmp.rb" to run file
# 2. Loop through each 
# 3. In the block, add text to the beginning of each sentence. 

=end

#       FIRST POST      
=begin
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

# FIRST SOLUTION

def split_lines(sentence)
    sentence.split("\n").each_with_index do |sentence, index|    
      puts "Line #{index+1}: #{sentence}"
    end
end

split_lines(s)

# SECOND SOLUTION

def split_lines(sentence)
    sentence.split("\n")
end

def print(s_array, no_of_lines)
    s_array.each_with_index do |sentence, index|    
      if index <= no_of_lines-1
        puts "Line #{index+1}: #{sentence}"
      end
    end
end

s_array = split_lines(s)
no_of_lines = 3

print(s_array, no_of_lines)

=end
