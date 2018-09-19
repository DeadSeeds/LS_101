flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name.chars.first(3).join
end


# LS's solution
#
# flintstones.map! do |name|
#   name[0, 3]
# end
