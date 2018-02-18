def high_and_low(numbers)
  min_max = numbers.split.minmax {|a,b| a.to_i <=> b.to_i }
  return min_max.reverse.join (" ")
end

puts high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")
