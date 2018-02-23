def longest(a1, a2)
  merge_strings = a1 + a2
  uniq_digets =  merge_strings.split("").uniq!.sort.join
end

puts longest("aretheyhere", "yestheyarehere")
