ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

counter = 0
lowest_number = 100000000
age_values = ages.values

loop do
  break if counter == ages.size
  if age_values[counter] < lowest_number
    lowest_number = age_values[counter]
  end
  counter += 1
end

lowest_number


# OR
# ages.values.min
