def staggered_case(sentence)
  sentence.chars.each_with_index do |letter, idx|
    if idx % 2 == 0
      letter.upcase!
    else
      letter.downcase!
    end
  end.join
end
