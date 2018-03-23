def get_words(hash)
  letters_array = []
  annagrams_array = []
  hash.each { |key, value|
    letters_array << (value * key)
  }
  annagrams_array = letters_array.join("").split("").sort.permutation.map(&:join)
   p annagrams_array.uniq
end

get_words({2=>["i", "a"], 1=>["x", "z"]})
# "iaiazx"
# "aaiixz"
# ["aabc", "aacb", "abac", "abca", "acab", "acba", "baac", "baca", "bcaa", "caab", "caba", "cbaa"]
