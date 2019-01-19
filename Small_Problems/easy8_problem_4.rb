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
