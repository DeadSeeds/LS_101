def short_long_short(str, str2)
  value = ''
  if str.size > str2.size
    value << str2 << str << str2
  else
    value << str << str2 << str
  end
end
