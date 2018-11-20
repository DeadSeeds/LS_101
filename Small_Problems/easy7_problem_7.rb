def staggered_case(sentence)
  final_str = ''
  new_str = sentence.chars
  toggle = true
  new_str.each do |letter|
    if letter =~ /[a-zA-Z]/ && toggle == false
      final_str << letter.downcase
      toggle = !toggle
    elsif letter =~ /[a-zA-Z]/ && toggle == true
      final_str << letter.upcase
      toggle = !toggle
    else
      final_str << letter
    end
  end
  final_str
end
