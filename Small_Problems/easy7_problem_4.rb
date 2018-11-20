def swapcase(sentence)
  sentence.chars.map! do |letter|
    if letter == letter.downcase
      letter.upcase
    else
      letter.downcase
    end
  end.join
end
