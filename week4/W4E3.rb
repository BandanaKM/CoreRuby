=begin
Call this program (p026zdeafgm2.rb) - 
Modify your Deaf Grandma program (Week 3 / Exercise6): 
What if grandma doesn't want you to leave? 
When you shout BYE, she could pretend not to hear you. 
Change your previous program so that you have to shout BYE three times in a row. 
Make sure to test your program: 
if you shout BYE three times, but not in a row, you should still be talking to grandma. 
You must shout BYE three separate times. 
If you shout BYEBYEBYE or BYE BYE BYE, 
grandma should pretend not to hear you (and not count it as a BYE).

From Chris Pine's Book.
=end

require '../week3/W3E6'

class Granny
  attr_accessor :bye_count

  def initialize
    @bye_count = 0
  end
  
  def talk_to_granny
    introduction
    loop do
      input = gets.chomp
      @bye_count += 1 if input.include?("BYE")
      break if @bye_count == 3
      granny_hears(input)
    end
    granny_quits
  end
end

call_granny = Granny.new
call_granny.talk_to_granny

=begin
  
Can you explain why you have two files, and what it is doing for you, why it is a good idea to sometimes break up your code into files?
Also, can you explain what is going on with the talk_to_granny method in both files? Why it is in both, what the disadvantage or advantage may be?  

-By creating a new file, I was able to modify the same class method without changing the base/original file's contents. 
I suppose having two definitions of the same class method could start to get confusing. 
If one the new file's intent were to add or expand additional class methods to the same class, it might be different. 
I'm sure that ruby gems are different, but it seems like they are providing addiontional functions and resources, and not necessarily redefining any of the core-library functions that are pre-exisiting 

- OK, I see now. But now you have a dependency. You must require the first file, and then the second file, otherwise things may be surprising, right?

So it is probably better to have the program in the same file right now. The fact that you overwrite one your methods may mean you need to simplify it. Don't Repeat Yourself (DRY) right?

Hey, just remembered, we have not gotten together in a hangout yet. You up for it? You were ready to do so 4 weeks ago!
=end