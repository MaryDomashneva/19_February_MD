def alphabet_war(fight)
  hash_array = Array.new
  lef_side = {"w" => 4, "p" => 3, "b" => 2, "s" => 1 }
  right_side = {"m" => 4, "q" => 3, "d" => 2, "z" => 1}
  hash_array << lef_side
  hash_array << right_side
  right_sum = 0
  left_sum = 0

  fight.split("").map {|i| num = hash_array[right_side.fetch(i)]}

  #fight.split("").map {|i| hash_array.detect{ |h| h[i]}[i]}.reduce(:+)
end

puts alphabet_war("zdqmwpbs")
