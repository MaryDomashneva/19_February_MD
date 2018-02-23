def pattern(n)
  array_of_integers = Array.new(0)
  if n < 1
    result_string = ""
  else
    result_string = ""
    1.upto(n) {|i| array_of_integers << i}
    array_of_integers.each do |a|
      (a.to_i).times {result_string = result_string + a.to_s}
      result_string = result_string + "\n"
    end
  end
  return result_string.chomp("\n")
end

puts pattern(10)
