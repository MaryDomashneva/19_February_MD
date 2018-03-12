def unscramble(scramble)
  world_list = ["his", "shi"]
  puts world_list.select { |word| word.chars.sort == scramble.chars.sort }
end

unscramble("ihs")
