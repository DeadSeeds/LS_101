def toggle_lights(num)
  hsh = create_hash(num)
  counter = 1
  loop do
    hsh.each do |key, value|
      if key % counter == 0 && hsh[key] == false
        hsh[key] = true
      elsif key % counter == 0 && hsh[key] == true
        hsh[key] = false
      end
    end
  counter += 1
  break if counter > hsh.size
  end
  select_lights(hsh).keys
end

def create_hash(num)
  hsh = {}
  1.upto(num) do |key, _|
    hsh[key] = false
  end
  hsh
end

def select_lights(hash)
  hash.select do |key, value|
    value == true
  end
end
