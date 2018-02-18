def find_it(seq)
  my_hash = Hash.new(0)
  seq.each do |x|
    my_hash[x] = my_hash[x] + 1
  end
  odd_number = nil
  my_hash.each do |n,k|
    odd_number = n if k.odd?
  end
  return odd_number
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
