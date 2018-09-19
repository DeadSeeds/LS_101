ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_values = ages.values
total = 0

ages_values.each do |age|
  total += age
end

total

# OR
#
# total = 0
#
# ages.each do |key, value|
#   total += value
# end
#
# total
