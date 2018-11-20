def include?(arr, value)
  result = false
  arr.each do |num|
    if num == value
      result = true
    end
  end
  result
end
