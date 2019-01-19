def sequence(number)
  arr = Array.new
  1.upto(number) do |num|
    arr << num
  end
  arr
end


# LS's solution:
#
# def sequence(number)
#   (1..number).to_a
# end
