def find_even_index(arr)
  length = arr.length
  for n in 0..length-1
    left_side = [] if n-1 < 0
    left_side = arr.slice(0..n-1) if n-1 >= 0
    right_side = arr.slice(n+1..length-1)
    left_sum = left_side.inject(0){|sum,x| sum + x }
    right_sum = right_side.inject(0){|sum,x| sum + x }
    if left_sum == right_sum
      return n
    end
  end
  return -1
end

puts find_even_index([20,10,30,10,10,15,35])
