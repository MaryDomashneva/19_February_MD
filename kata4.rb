def filter_list(l)
my_list = l.find_all {|i| i.is_a? Integer}
end
a = filter_list(["a","b",1,2,0])
puts a
