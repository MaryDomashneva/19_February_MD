def key
  puts "Please, type in 5 employees:"
  answer = gets.chomp
  key_array = answer.split.map!{ |x| x.gsub(/,/, '') }
  count_array = key_array.count
    if count_array != 5
      puts "Wrong number of arguments, we need 5 names"
    else
      puts key_array.sample
    end
end

key
