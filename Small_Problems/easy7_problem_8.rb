def show_multiplicative_average(arr)
  total = 1
  arr.each do |num|
    total *= num
  end
  total = total.to_f / arr.length.to_f
  total.round(3)
  printf("%.3f", total)
end
