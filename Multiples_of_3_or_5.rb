def solution(number)
  my_array = Array.new
  for n in 1...number
    if n % 3 == 0 || n % 5 == 0
        my_array << n
    end
  end
  return my_array.sum
end

puts solution(200)
