def staggered_case(sentence)
  final_str = ''
  toggle = true
  sentence.chars.each do |letter|
    if toggle
      final_str << letter.upcase
    else
      final_str << letter.downcase
    end
    toggle = !toggle
  end
  final_str
end
