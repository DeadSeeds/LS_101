ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! do |key, value|
  value < 100
end




ages.reject { |k,v| v > 100}
# returns a new hash; problem asks to return the original hash
