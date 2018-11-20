VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

def remove_vowels(arr)
  new_arr = []
  string = arr.each do |word|
    word.split
  end
  string.map! do |word|
    word.chars.delete_if do |letter|
      VOWELS.include?(letter)
    end
  end
  string.map! do |arr|
    arr.join unless arr == nil
  end
  string.each do |word|
    new_arr << word
  end
  string
end


# LS solution:
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
