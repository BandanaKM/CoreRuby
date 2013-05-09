file = ARGF.readlines

lines = file.size
puts "There are #{lines} lines in text.txt"

character_ct = file.join.length
puts "There are #{character_ct} characters in text.txt"

character_ct_no_spaces = file.join.gsub(/\s+/, "").length
puts "There are #{character_ct_no_spaces} characters, without spaces, in text.txt"

word_ct = file.join.delete("^a-zA-Z|\s").split(" ").length
puts "There are #{word_ct} words in text.txt"

paragraph_ct = file.join.split(/\n\n/).length
puts "There are #{paragraph_ct} paragraphs in text.txt"

sentences_ct = file.join.split(/\.|!|\?/).length
puts "There are #{sentences_ct} sentences in text.txt"

avg_words_per_sent = word_ct / sentences_ct
puts "On average, there are #{avg_words_per_sent} words per sentence in text.txt"

avg_sent_per_paragraph = sentences_ct / paragraph_ct
puts "On average, there are #{avg_sent_per_paragraph} sentences per paragraph in text.txt"