flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

counter = 0
position = 0

loop do
  break if counter == flintstones.size
  if flintstones[counter].start_with?("Be")
    position = counter
  end
  counter += 1
end

position

# The above only works with this example.  position will become the index number
# of the LAST item in the array that starts with "Be".  If you change the last
# item to "Bebbles", this breaks.

position = 0
flintstones.each_with_index do |person, index|
  position = index
  break if person.start_with?("Be")
end
position


# LS's solution:
#
# flintstones.index { |name| name[0, 2] == "Be" }
