=begin
You want a challenge? With Blocks (Closures)?

How about this one:

Code a FizzBuzz program - in Ruby, of course - that outputs the numbers from 1 to 100. But...:

- if the number is dividable by 3 then output *Fizz*
- if the number is dividable by 5 then output *Buzz*
- if the number is dividable by 3 and 5 then output *FizzBuzz*

Now, extend the code to handle other "pairs". For example:

- if divided by 7 then output *Dazz* 
- if dividable by 3 and 7 then output *FizzDazz*
- if dividable by 3 and 5 and 7 then output *FizzBuzzDazz*
- If divisible by 11, then output *Kezz*

And extend it so it can take care of more "pairs". The idea here is to pass a block to a method
that then evaluates the divisibility of the number given a divider and it's matching string. ;)
Game?

Of course, it doesn't have to be a block, it can be done other ways... looking forward to some good solutions!
_________________
PART 1

def fizz_buzz
  (1..100).map do |num|    
    if num % 3 == 0 && num % 5 == 0 
      "FizzBuzz"
    elsif num % 3 == 0 
      "Fizz"
    elsif num % 5 == 0 
      "Buzz"        
    else 
      num   
    end
  end
end

puts fizz_buzz
=end

def fizz_buzz(range_bottom, range_top)
  (range_bottom..range_top).map do |num|    

    if num % 3 == 0 
        "Fizz"
    elsif num % 5 == 0 
        "Buzz"        
    elsif num % 15 == 0 
        "FizzBuzz"   
    else 
      num
    end
  end
end

puts fizz_buzz(1, 100)

=begin
For the second part, I'm a little stuck. Here is my problem approach strategy
1. The method currently has two parameters: range_bottom, range_top
2. Somehow, we need to have the method can accept a block statement when the method is called, like a yield or proc. 


=end

=begin
class FizzBuzz
  
  def fizz_buzz_dazz_dezz(&block)
    (1..100).each(&block)
  end  
end

fizztest = FizzBuzz.new
fizztest.fizz_buzz_dazz_dezz {|num| puts "fizz" if num%3==0 }
=end
