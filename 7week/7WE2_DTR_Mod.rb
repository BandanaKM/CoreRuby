=begin
Exercise2. You are using a class (say DTRConvertor) that’s got a bug in one of its methods (the bug is that the conversion rate is Rs 38). You know where the bug is and how to fix it, but you can’t or don’t want to change the source file itself. Write code to do it. 
=end

=begin 

TRY 1
require_relative 'dtr'

class DTRConvertor
  def new_convert(dollar_amount)
    dollar_amount * 38.0
  end
end

m = DTRConvertor.new
puts m.new_convert(100.0)

#outputs contents of dtr.rb first - okay to modify
=end

require_relative 'dtr'

class NewDTR < DTRConvertor
  alias_method :new_convert, :convert
  
  def new_convert(dollar_amount)
      dollar_amount * 38.0
  end
end

m = NewDTR.new
puts m.new_convert(100.0)