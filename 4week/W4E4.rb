=begin
Write a Ruby program 
(call it p028swapcontents.rb) to do the following.
 Take two text files say A and B. 
 The program should swap the contents of A and B. 
 That is after the program is executed, 
 A should contain B's contents and B should contains A's contents.
=end

#filea = File.readlines('./A.txt', 'r+') 
#fileb = File.readlines('./B.txt', 'r+')

#File.open('./B.txt', 'w') { |file| file.write filea }
#File.open('./A.txt', 'w') { |file| file.write fileb }


class FileSwap
	attr_accessor :file1, :file2, :file1_contents, :file2_contents

	def initialize(file1, file2)
		@file1 = file1
		@file2 = file2
		@file1_contents = File.readlines("./#{@file1}", 'r+')
		@file2_contents = File.readlines("./#{@file2}", 'r+')
	end

	def swap
		File.open(@file1, 'w') {|file| file.puts @file2_contents}
		File.open(@file2, 'w') {|file| file.puts @file1_contents}
	end

end

files = FileSwap.new("A.txt", "B.txt")
files.swap