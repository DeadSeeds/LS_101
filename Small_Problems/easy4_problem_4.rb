def leap_year?(year)
  if year <= 1752
    year % 4 == 0
  elsif (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
    true
  elsif (year % 4 == 0) && (year % 100 == 0)
    false
  else
    false
  end
end
