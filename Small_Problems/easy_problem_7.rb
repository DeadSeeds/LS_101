def stringy(number)
  final = []
    number.times do |num|
      number = num.odd? ? 0 : 1
      final << number
    end
  final.join
end
