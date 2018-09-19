flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
counter = 0

loop do
  break if counter == flintstones.size
  current_key = flintstones[counter]
  hash[current_key] = counter
  counter += 1
end

hash
