def multiply_all_pairs(arr1, arr2)
  final_arr = []
  arr1.each do |num1|
    arr2.each do |num2|
      final_arr << num1 * num2
    end
  end
  final_arr.sort
end
