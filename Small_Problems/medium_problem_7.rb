DIGITS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(string)
DIGITS.keys.each do |word|
  string.gsub!(/\b#{word}\b/, DIGITS[word])
end
string
end

word_to_digit('Please call me at five five five one two three four. Thanks.')
