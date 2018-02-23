def get_middle(s)
  if s.length.to_i.even?
    n = s.length
    t = n/2
    puts s[t-1] + s[t]
  else
    n = s.length
    t = n/2
    k = n - (t)
    puts s[k]
  end
  end

puts get_middle("testing")
puts get_middle("middle")
