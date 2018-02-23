def persistence(n)
  count = 0
  result = 1

  def  multiply(num)
  return  num.inject(1) {|a,b| a.to_i * b.to_i}
  end

  while n.to_s.length > 1 do
    n = n.to_s.split("")
    n = multiply(n)
    count = count + 1
  end


  return count

end



puts persistence(6575)
