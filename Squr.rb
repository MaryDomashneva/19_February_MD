def is_square(x)
  if x >= 0
    a = Math.sqrt(x)
    if a % 1 == 0
      puts "#{x} is a perfect square (#{a.to_i} * #{a.to_i})"
      return true
    else
      puts "#{x} is not a perfect square"
      return false
    end
  else
    puts "#{x} is not a perfect square"
    return false
  end
end

def is_squares(y)
  y < 0 ? false : Math.sqrt(y) % 1 == 0
end

puts is_square(0)
