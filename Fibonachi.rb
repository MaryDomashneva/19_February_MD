
def fibonachi(n)
  if n > 2
    k = 1
    k2 = 1
    num = 0
    for i in 3..n do
      num = k + k2
      k = k2
      k2 = num
    end
  elsif n == 0
    num = 0
  elsif n == 1 or n == 2
    num = 1
  end
  return num
end

puts fibonachi(0) # 0
puts fibonachi(1) # 5
puts fibonachi(2) # 13


#  1 1 2 3 5 8
# k1
# k2
# k3
# k3 = k1 + k2
# k1 = k2
# k2 = k3
# ...
# return k3
#
# k1 = 1
# k2 = 1
# k3 = 1 + 1
# k1 = 1
# k2 = 2
# k3 = 1 + 2
# ...
