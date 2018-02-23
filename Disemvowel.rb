def disemvowel(str)
  str.downcase.delete "aeiou"
end

puts disemvowel("ThIs website is for losers LOL!")
