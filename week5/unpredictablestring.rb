class UnpredictableString < String

  attr_writer :string
  def initialize
  	puts "Please type in a sentence:"
    @string = gets.chomp
  end
  
  def scramble
    @string.split('').shuffle!.join
  end
  
end

sentence = UnpredictableString.new
puts sentence.scramble