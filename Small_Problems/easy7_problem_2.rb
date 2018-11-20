def letter_case_count(string)
  final_hash = {:lowercase => 0, :uppercase => 0, :neither => 0}

  string.chars.each do |char|
    if char.ord >= 97 && char.ord <= 122
      final_hash[:lowercase] += 1
    elsif char.ord >= 65 && char.ord <= 90
      final_hash[:uppercase] += 1
    else
      final_hash[:neither] += 1
    end
  end
  final_hash
end
