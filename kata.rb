string = gets.chomp
convert_to_array = string.split
min = nil
for k in (0...convert_to_array.length)
      if min == nil or convert_to_array[k].length < min
        min = convert_to_array[k].length
      end
end
puts min
