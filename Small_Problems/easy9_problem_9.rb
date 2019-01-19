def get_grade(num1, num2, num3)
  avg = (num1 + num2 + num3) / 3

  case avg
  when 90..100
    "A"
  when 80..90
    "B"
  when 70..80
    "C"
  when 60..70
    "D"
  else
    "F"
  end
end
