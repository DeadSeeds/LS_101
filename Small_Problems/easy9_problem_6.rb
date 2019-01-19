def word_lengths(string)
  string.split.map do |word|
    word + " " + word.size.to_s
  end
end
