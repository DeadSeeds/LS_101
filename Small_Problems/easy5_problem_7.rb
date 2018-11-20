def word_sizes(sentence)
  hsh = {}
  sentence.split.each do |word|
    word.gsub!(/[^a-z]/i, '')
    if hsh[word.size]
      hsh[word.size] += 1
    else
      hsh[word.size] = 1
    end
  end
  hsh
end
