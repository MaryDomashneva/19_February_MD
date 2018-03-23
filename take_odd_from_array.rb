def find_outlier(integers)
  odd = integers.select {|i| i.odd?}
  even = integers.select {|i| i.even?}

  if odd.count >= 2
    even.join(" ").to_i
  else
    odd.join(" ").to_i
  end

end


puts find_outlier([2,6,8,10,3])
