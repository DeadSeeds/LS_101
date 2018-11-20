def xor?(param1, param2)
  if (param1 && !param2) || (param2 && !param1)
    true
  else
    false
  end
end
