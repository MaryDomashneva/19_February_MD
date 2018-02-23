def series_sum(n)
  sum = 0
  if n >= 2
    sum = 1
    for i in 2..n do
      sum = sum + 1.0/(4.0 + 3.0 * (i - 2.0))
    end
  else
    sum = n
  end
  return '%.2f' % sum.to_f
end

puts series_sum(3)
