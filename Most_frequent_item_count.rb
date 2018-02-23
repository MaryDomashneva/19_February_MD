 def most_frequent_item_count(collection)
  new_hash = Hash.new(0)
  collection.each do |i|
    new_hash[i] = new_hash[i] +1
  end
  count_array = Array.new
  new_hash.each do |n,k|
    count_array << k
  end
  return count_array.max
end


puts most_frequent_item_count([3, -1, -1])
