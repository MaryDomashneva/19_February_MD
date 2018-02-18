def alphabet_war(fight)
  lef_side = {"w" => 4, "p" => 3, "b" => 2, "s" => 1 }
  right_side = {"m" => 4, "q" => 3, "d" => 2, "z" => 1}

  left_side_sum = fight.split("").map {|i|
    if lef_side[i] != nil
      lef_side[i]
    else
      0
    end
  }.reduce(:+)

  right_side_sum = fight.split("").map {|i|
    if right_side[i] != nil
      right_side[i]
    else
      0
    end
  }.reduce(:+)

  if left_side_sum > right_side_sum
    puts "Left side wins!"
  elsif right_side_sum > left_side_sum
    puts "Right side wins!"
  elsif left_side_sum == right_side_sum
    puts "Let's fight again!"
  end

  #fight.split("").map {|i| hash_array.detect{ |h| h[i]}[i]}.reduce(:+)
end

puts alphabet_war("zdqmwpbs")
