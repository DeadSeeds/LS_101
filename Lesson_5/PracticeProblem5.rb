total_age = 0
munsters.each do |key, value|
  if value["gender"] == "male"
    total_age += value["age"]
  end
end
total_age
