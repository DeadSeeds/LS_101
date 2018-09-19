def make_uuid
  letters = 'abcdef0123456789'

  first = []
  second = []
  third = []
  fourth = []
  fifth = []

  8.times do
  random_char = letters.chars.to_a.sample
  first << random_char
  first.join
  end

  4.times do
  random_char = letters.chars.to_a.sample
  second << random_char
  second.join
  end

  4.times do
  random_char = letters.chars.to_a.sample
  third << random_char
  third.join
  end

  4.times do
  random_char = letters.chars.to_a.sample
  fourth << random_char
  fourth.join
  end

  12.times do
  random_char = letters.chars.to_a.sample
  fifth << random_char
  fifth.join
  end

  "#{first.join}" + "-" + "#{second.join}" + "-" + "#{third.join}" + "-" + "#{fourth.join}" + "-" + "#{fifth.join}"
end

make_uuid
