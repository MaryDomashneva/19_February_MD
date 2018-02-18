def descending_order(n)
  sorted_array = n.to_s.split("").sort { |a, b| b.to_i <=> a.to_i}.join
end

puts descending_order(123456789)
