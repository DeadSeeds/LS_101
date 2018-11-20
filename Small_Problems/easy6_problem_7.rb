def halvsies(arr)
  arr, arr2 = arr.each_slice((arr.size / 2.0).round).to_a
end
