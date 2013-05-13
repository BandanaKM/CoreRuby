# Exercise 4: Modify your TextAnalyzer program to add the exception feature.
# See Week 3 analyzer.rb for code

#Problem Approach
# 1. update code to use classes & inheritance
# 2. attempt to DRY it out
# 3. modify ARGS handling - check for basic requirements to run the program
# 4. test - pass a non-txt file and an empty file

class TextFile
  def initialize(file_name)
    raise ArgumentError, 'Argument is not a text file' unless file_name.filename.match(%r{.txt})
		@file_name = file_name.filename

    @file_contents = file_name.readlines
    raise ArgumentError, 'Text file is empty' unless @file_contents.size != 0
	end

  def display(data)
    puts "There are #{data} #{yield} in #{@file_name}"
  end
end


class Analyze < TextFile
	def size
		@lines = @file_contents.size
		display(@lines) {"lines"}
	end

	def character_ct
		@character_ct = @file_contents.join.length
		display(@character_ct) {"characters"}
	end

  def character_ct_no_spaces 
    @character_ct_no_spaces = @file_contents.join.gsub(/\s+/, "").length
    display(@character_ct_no_spaces) {"characters, without spaces,"}
  end

  def word_ct
    @word_ct = @file_contents.join.delete("^a-zA-Z|\s").split(" ").length
    display(@word_ct) {"words"}
  end

  def paragraph_ct
    @paragraph_ct = @file_contents.join.split(/\n\n/).length
    display(@paragraph_ct) {"paragraphs"}
  end

  def sentences_ct
    @sentences_ct = @file_contents.join.split(/\.|!|\?/).length
    display(@sentences_ct) {"sentences"}
  end

  def avg_words_per_sent
    @avg_words_per_sent = @word_ct / @sentences_ct
    display(@avg_words_per_sent) {"words per sentence, on average,"}
  end

  def avg_sent_per_paragraph 
    @avg_sent_per_paragraph = @sentences_ct / @paragraph_ct
    display(@avg_sent_per_paragraph) {"sentences per paragraph, on average,"}
  end
end


file = Analyze.new(ARGF)
file.size
file.character_ct
file.character_ct_no_spaces
file.word_ct
file.paragraph_ct
file.sentences_ct
file.avg_words_per_sent
file.avg_sent_per_paragraph