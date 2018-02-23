def square_digits num
  return num_array = num.to_s.split("").map! { |a| a.to_i**2 }.join.to_i
end

puts square_digits(3212)
