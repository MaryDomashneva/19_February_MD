def duplicate_encode(word)
  chars_hash = Hash.new(0)
  initiall_array = word.downcase.split("")
  initiall_array.each do |v|
    chars_hash[v] += 1
  end
  new_array = []
  initiall_array.each { |i| if chars_hash[i] > 1 then new_array << ")" else new_array << "(" end }
  puts new_array.join
end

duplicate_encode("Success")
#)())())
duplicate_encode("(( @")
#))((
