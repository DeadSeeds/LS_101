produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  returned_hash = {}
  counter = 0
  hash_keys = hash.keys
  hash_values = hash.values

  loop do
    current_value = hash_values[counter]
    current_key = hash_keys[counter]
    p current_value
    if current_value == 'Fruit'
      returned_hash["#{current_key}"] = "#{current_value}"
    end
    counter += 1
    break if counter >= hash.size
  end
  returned_hash
end


select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
