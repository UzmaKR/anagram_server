

words_in_array = File.readlines("/Users/apprentice/Desktop/tej_uzma/anagram_server_1/anagram_server/words.txt")
words_in_array.each do |word|
  Word.create(name: word.chomp)
end