def get_sum(a,b)
min = [a,b].min
max = [a,b].max
return min if min == max
min + get_sum(min + 1, max)
end

a = get_sum(-1,9)
puts a
