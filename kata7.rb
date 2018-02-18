def unique_in_order(iterable)
a = iterable.to_s.gsub(/\s+/, "").gsub(/(\W|\d)/, "").split("").chunk{|n| n}.map(&:first)
end

a = unique_in_order([1,2,3,3])
puts a

def unique_in_order(iterable)
  return iterable if iterable.empty?
  return iterable.reduce([]) {|a,b| a.last != b ? a << b : a } if iterable.is_a? Array
  return iterable.each_char.reduce([]) {|a,b| a.last != b ? a << b : a }.join if iterable.is_a? String
end
