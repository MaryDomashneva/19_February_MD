def count_smileys(arr)
  sum = 0
  arr.each do |n|
    if /^[:;][-~]?[)D]$/.match(n)
      sum = sum +1
    end
  end
  return sum
end

puts count_smileys([":D",":~)",";~D",":)"])
