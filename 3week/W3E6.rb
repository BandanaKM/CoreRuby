=begin
Exercise6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

Adapted from Chris Pine's Book.

For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!


# grandma start with = "HI, HOW ARE YOU?"
# - if variable.includes?(/^A-Z/)  - return msg 
# "HUH!? SPEAK UP SONNY!"

# - variable = gets.chomp (what person types in)
# - if variable == variable.upcase - return msg 
# "NO, NOT SINCE #{date[rand[date.size]]}!"
# - date = [*1930...1950]

# - variable = gets.chomp (what person types in)
# - if variabe.includes?("bye")
# - file close

#file_again = STDIN.gets.chomp()
#STDIN.gets
#target = File.open(filename, 'w+')
#target.close()



TRY 1

def deaf_grandma
  response = gets.chomp  
  if response.include?("BYE")
    puts "GOODBYE!"
  elsif response != response.upcase 
    response_speak_up
  else response == response.upcase 
    response_date
  end
end

def introduction
  puts "HELLO THERE. SAY HELLO TO YOUR GRANDMA!"
#  deaf_grandma   <--- take two - removed. enters deaf_grama, but then deaf_grandma is called again. not needed
end

def response_speak_up
  puts "HUH!? SPEAK UP SONNY!"
  deaf_grandma
end

def response_date
  date = [*1930...1950]
  puts "NO, NOT SINCE #{date[rand(date.size)]}!"
  deaf_grandma
end

introduction
deaf_grandma

# BYE needs to run twice to exit program. why?
# b/c introduction calls deaf_grandma. you need to exit deaf_grandma in order
# to exit introduction, and then the program calls deaf_grandma again

FIRST TRY - REFRACTORED

def speak_to_deaf_grandma
  introduction
  deaf_grandma
end

def deaf_grandma
  response = gets.chomp  
  if response.include?("BYE")
    puts "GOODBYE!"
  elsif response != response.upcase 
    response_speak_up
  else response == response.upcase 
    response_date
  end
end

def introduction
  puts "HELLO THERE. SAY HELLO TO YOUR GRANDMA!"
end

def response_speak_up
  puts "HUH!? SPEAK UP SONNY!"
  deaf_grandma
end

def response_date
  date = [*1930...1950]
  puts "NO, NOT SINCE #{date[rand(date.size)]}!"
  deaf_grandma
end

speak_to_deaf_grandma

**** Feedback:
let granny control her own flow - hints:

def response_speak_up
  "HUH!? SPEAK UP SONNY!"
end

puts introduction
until granny_quits?
  puts granny_response(gets.chomp)
end

SECOND TRY

class Grandma

  def initialize
    introduction
    loop do
      input = gets.chomp
      break if input.include?("BYE")
      granny_hears(input) 
    end
    granny_quits
  end

  def granny_hears(sentence)
    sentence==sentence.upcase ? response_date : response_speak_up
  end
  
  def introduction
    puts "HELLO THERE. SAY HI TO YOUR GRANDMA!"
  end
  
  def response_speak_up
    puts "HUH!? SPEAK UP SONNY!"
  end
  
  def response_date
   puts "NOT SINCE #{rand(1930..1950)}"
  end
  
  def granny_quits
   puts "GOODBYE!"
  end
  
end

call_grandma = Grandma.new
call_grandma

=end

class Granny

  def talk_to_granny
    introduction
    loop do
      input = gets.chomp
      break if input.include?("BYE")
      granny_hears(input) 
    end
    granny_quits
  end

  def granny_hears(sentence)
    sentence==sentence.upcase ? response_date : response_speak_up
  end
  
  def introduction
    puts "HELLO THERE. SAY HI TO YOUR GRANDMA!"
  end
  
  def response_speak_up
    puts "HUH!? SPEAK UP SONNY!"
  end
  
  def response_date
   puts "NOT SINCE #{rand(1930..1950)}"
  end
  
  def granny_quits
   puts "GOODBYE!"
  end
end

#call_granny = Granny.new
#call_granny.talk_to_granny