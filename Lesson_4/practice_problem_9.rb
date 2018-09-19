words = "the flintstones rock"

new = words.split.each do |word|
  word.capitalize!
  end

new.join(" ")

# LS's solution:
#
# words.split.map { |word| word.capitalize }.join(' ')
