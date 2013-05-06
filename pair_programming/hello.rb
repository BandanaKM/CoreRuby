=begin
doctest: I have a method named hello
>> hello
=> "Hello World!"
doctest: I can greet someone by name
>> hello 'Chae'
=> "Hello Chae!"
doctest: I can ask if someone is there
>> hello("Tanya", "?")
=> "Hello Tanya?"
=end
def hello(name='World', punctuation='!' )
  "Hello #{name}#{punctuation}"
end
