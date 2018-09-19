hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = "aeiou"
new_arr = []

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |char|
      if vowels.include?(char)
        new_arr << char
      end
    end
  end
end
