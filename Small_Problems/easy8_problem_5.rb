def substrings(string)
  final = []
  counter = 0
  loop do
    1.upto(string.length - counter) do |num|
      final << string[counter, num]
    end
    counter += 1
    break if counter == string.length
  end
  final
end

def palindromes(string)
  all_subs = substrings(string)
  final = all_subs.select do |word|
    word == word.reverse && word.length > 1
    end
  final
end
