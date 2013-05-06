=begin
doctest: I have a method named trial
>> trial
=> "I'm learning VIM!"
doctest: I can learn other things
>> trial 'cursor movements'
=> "I'm learning cursor movements!"
doctest: I can have a little doubt
>> trial("VIM editing", "?")
=> "I'm learning VIM editing?"
=end
def trial(item_studying='VIM', punctuation='!' )
  "I'm learning #{item_studying}#{punctuation}"
end
