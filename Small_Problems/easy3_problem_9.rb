def real_palindrome?(string)
  new_string = string.downcase.scan(/\w+/).join
  new_string == new_string.reverse
end
