CONS = %w(b c d f g h j k l m n p q r s t v w x y)

def double_consonants(string)
  final_string = ""
  string_chars = string.chars
  string_chars.each do |letter|
    if CONS.include?(letter.downcase)
      final_string << letter * 2
    else
      final_string << letter
    end
  end
  final_string
end
