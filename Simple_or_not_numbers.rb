def chek_range(n)
  result_array = Array.new
  for i in 2..n do
    if i != n
      result = n / i
      if n % i == 0
        result_array << result
      end
    end
  end
  if result_array.empty?
    return "number is simple"
  else
    return "number is not simple"
  end
end

puts chek_range(63001)
