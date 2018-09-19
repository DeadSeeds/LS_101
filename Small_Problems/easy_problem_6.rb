def reverse_sentence(sentence)
  new_sentence = sentence.split.each do |word|
    word.reverse! if word.length >= 5
  end
  new_sentence.join(" ")
end
