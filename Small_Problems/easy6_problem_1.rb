require 'pry'

DEGREE = "\xC2\xB0"
SECONDS = 60
MINUTES = 60
TOTAL_SECONDS = SECONDS * MINUTES


def dms(number)
  temp_num = number.to_s.split(".")
  total_degrees = temp_num[0].to_i
  total = number * TOTAL_SECONDS
  temp_degrees, minutes = total.divmod(TOTAL_SECONDS)
  minutes, seconds = minutes.divmod(60)
  seconds = seconds.floor
  p format(%(#{total_degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(93.034773)
