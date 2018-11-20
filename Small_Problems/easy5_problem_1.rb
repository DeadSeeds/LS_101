def ascii_value(string)
  total = 0
  string.chars.each do |letter|
    total += letter.ord
  end
  total
end
