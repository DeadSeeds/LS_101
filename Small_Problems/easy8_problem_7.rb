def repeater(string)
  new_string = string.chars
  new_string.map do |char|
    char * 2
  end.join
end
