def printer_error(s)
  length = s.length
  sum = 0
  s.each_char do |n|
    if /[a-m]/.match(n)
      sum = sum + 1
    end
  end
not_match = length - sum
puts "#{not_match}/#{length}"
end

puts printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")
