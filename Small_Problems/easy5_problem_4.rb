def swap_first_and_last(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(sentence)
  new_sent = sentence.split
  new_sent.each do |word|
    swap_first_and_last(word)
  end
  new_sent.join(" ")
end
