class Klass
  attr_accessor :phrase
  def initialize(phrase)
    @phrase = phrase
  end
  
  def say_hello
    @phrase
  end
end