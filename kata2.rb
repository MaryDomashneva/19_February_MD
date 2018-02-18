string = gets.chomp
convert_to_array = string.split
a = convert_to_array.min { |x,y| x.size <=> y.size }
return a.length
