arr.map do |array|
  array.sort do |a, b|
    b <=> a
  end
end
