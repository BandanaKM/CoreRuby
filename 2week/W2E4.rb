=begin
a. Imagine for a moment, that you want to be able to set a variable, but if it’s not set, you default to a known value. You’d rather do it on a single line.

puts expand = defined?( expand ) ? expand : true
Why is the output nil ?
=end

=begin
Not sure about this one...

It seems like if

  defined?(undeclared_value) => nil
  expand = nil ? expand : true => true

then I want to think that

expand = defined?( expand ) ? expand : true 
=> true

But, it doesn't...it returns nil. Why? my only guess is that the ternary expression wants to evaluate a strictly true/false statement, not something that returns nil, even though nil is evaluates to false. 

On a separate note, the 'thimk' clue had me realize that the statement all together doens't work the way it was intended. If the goal is to identify when the value is undefined, our defined? method is returning nil/false when we want it to return true. If we switch the true/false values it works. 
=end

=begin
SECOND GO:


I think this is the third time I've come up with a "Ruby just does wierd things" explanation. Of course there's no typo, and the code works fine =) 

Okay, I think I understand what's happening. You asked, "Do you think the expand variable exists and is defined?". So I ask myself, how do we test that? I'm thinking:
defined?(some_object_we_know_nothing_about)

so if
defined?(expand)  => nil

it means that "expand" starts out as nil because it isn't defined. So the first part "expand = defined?(expand)" can be interpreted as
nil = nil

On another note, it makes me wonder if Ruby always returns true when asked if something is "defined?", since everything in Ruby is an object...
=end

=begin
THIRD GO:

Hm, I did notice before that "local variable" was being returned sometimes, but I didn't think we were ever seeing it within this evaluation, since defined?(expand) was nil. Here are more tests.
New session:
>> defined?(expand)
=> nil
>> expand = nil   
=> nil
>> defined?(expand)
=> "local variable"
>> expand
=> nil
>> expand = defined?(expand)
=> "local variable"
>> expand
=> "local variable"

new session
>> expand = defined?(expand)
=> "local variable"
>> expand
=> "local variable"

I have no idea what's going on. It seems like the result should be "local variable"...
=end

=begin
ANSWER:

OK. Now that you have indeed taken the steps, I will try to document them here.

You noticed that 'local-variable' was indeed returned once expand was defined, and it is indeed a local variable, right?

So now we just need to realize exactly when did it become defined!

Ruby is not a compiled language, and so this means that it does not have the benefit of being compiled and put together at some point in the past. This means that there has to be some way to keeping house for Ruby. And Ruby has a phase that happens before the execution of the code.

It will do a few things, but one of those things is creating a look-up table for names. Remember that local variables, then methods and then reserved key-words will be used and will be looked up in that order, right?

So when this stage of Ruby looks at expand and sees the assignment operator to the right side of it, it says 'Hey, this "expand" is going to be a local variable!' and tags it as such. It does not evaluate it, it is just making a space in the table for it. But it also needs to hold something to it, and so assigns nil to it. It is the closest thing Ruby has for a non-object, non-thing, or nothing.

Now, when Ruby needs to evaluate the line, it sees that we need to assign expand to the expression on the right hand side of the assignment operator. So it sees that we need to find out if expand is defined and defined?(expand) returns 'local-variable' and so defined? returns true, as 'local-variable' is a truthy value. And so expand = expand, which is nil.

It really is as simple as that. expand was assigned itself, and it was assigned nil just as a housekeeping measure. Had it not been defined, then it would have been assigned the literal 'true' because that is the false branch of the ternary operator we see.

Does this now make sense after seeing this in IRB?
=end
