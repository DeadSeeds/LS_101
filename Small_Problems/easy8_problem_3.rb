def substrings_at_start(string)
  final = []
  1.upto(string.length) do |num|
    final << string[0, num]
  end
  final
end


# LS's solution:
#
# def substrings_at_start(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end
