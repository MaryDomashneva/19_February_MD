def positive_sum(arr)
  if arr.all?(&:negative?)
    return 0
  else
    sum = arr.empty? ? 0 : arr.find_all { |i|  i >= 0 }.reduce(:+)
  end
  return sum
end
a = positive_sum([])
puts a
