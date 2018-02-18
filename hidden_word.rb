def hidden(num)
  my_hash = {"a" => 6, "b" => 1, "d" => 7, "e" => 4, "i" => 3, "l" => 2, "m" => 9, "n" => 8, "o" => 0, "t" => 5}
  return num.to_s.split("").map{|i| my_hash.key(i.to_i)}.join("")
end

puts hidden(637)
