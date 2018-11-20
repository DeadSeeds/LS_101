def word_cap(sentence)
  mod = sentence.split
  mod.map! do |word|
    word.capitalize
  end
  mod.join(" ")
end
