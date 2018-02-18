# def pattern(n)
#   string = (0..n).map{|i| i.to_s}.join("").reverse
#   l = string.length
#   string_array = Array.new
#   while l != 0 do
#     string = string.chop
#     string_array << string
#     l = string.length - 1
#   end
#   return string_array.map{|k| k.to_s}.join ("\n")
# end
#
# puts pattern(5)
#
# def pattern(n)
#   string = (1..n).map{|i| (i..n).map{|k| k.to_s}.reverse.join("")}.join("\n")
# end

# puts pattern(56)

def pattern(n)
  (1..n).map{|x| n.downto(x).map(&:to_s).join}.join("\n")
end

puts pattern(5)
