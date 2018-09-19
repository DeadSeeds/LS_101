statement = "The Flintstones Rock"

new_hash = {}

statement.chars.each do |letter|
  if letter == " "
    next
  elsif
    new_hash[letter]
      new_hash[letter] += 1
  else
    new_hash[letter] = 1
  end
end
new_hash


# LS's solution:
#
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end
