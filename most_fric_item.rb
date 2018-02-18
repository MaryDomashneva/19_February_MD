def most_frequent_item_count(collection)
  collection.uniq.map{ |v| collection.count v }.max || 0
end

puts most_frequent_item_count([3, -1, -1])
