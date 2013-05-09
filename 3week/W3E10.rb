=begin
Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.


def sum_of_elements(array)
  array.inject(0) {|num1, num2| num1 + num2}
end
 
collection = [1, 2, 3, 4, 5]
puts sum_of_elements(collection)

=end

def sum_of_elements(array)
  array.inject(:+)
end

collection = [1, 2, 3, 4, 5]
puts sum_of_elements(collection)

=begin
Those colon methods, as you are referring to them as for the moment are simply Symbols. In our reading, we will read about symbols, so I won't get into the details of that here, unless you ask. :)

But, the :+ is just the symbol for the + method, and so any other "colon methods" are exactly any other method you would like to refer to as a symbol.

So, for instance, send the inject message on a collection of strings, with the symbol :puts and you will call puts on each (though you will have to investigate why not the first one...) as shown in this IRB session. 

>> word_collection = %w[this is a collection of words]
=> ["this", "is", "a", "collection", "of", "words"]
>> word_collection.inject(:puts)
is
a
collection
of
words
=> nil

=end