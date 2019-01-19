def center_of(string)
  num = string.length.to_f
  if num % 2 == 0
    num = (num / 2).floor
    string[(num - 1), 2]
  else
    num = (num / 2).floor
    string[num]
  end
end


# LS's solution:
#
# def center_of(string)
#   center_index = string.size / 2
#   if string.size.odd?
#     string[center_index]
#   else
#     string[center_index - 1, 2]
#   end
# end
