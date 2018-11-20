def cleanup(sentence)
  new_letter = ''
  sentence.chars.map do |letter|
    if ('A'..'z').include?(letter)
      new_letter = letter
    elsif new_letter == ' '
      ''
    else
      new_letter = ' '
    end
  end.join
end
