def digital_root(n)
  sum = n
  while sum > 10 do
    sum = sum.to_s.split("").map(&:to_i).inject(0, :+)
  end
  sum
end


puts digital_root(167)
