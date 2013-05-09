class UnpredictableString < String

  attr_writer :string
  def initialize(sentence)
    @string = sentence
  end
  
  def scramble
    @string.split('').shuffle!.join
  end
  
end

sentence = UnpredictableString.new(gets.chomp)
puts sentence.scramble