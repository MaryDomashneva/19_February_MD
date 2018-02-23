def getCount(inputStr)
  my_string = inputStr.downcase.gsub(/\s+/, "").count "aeiou"
end
a = getCount("abracadabra")
puts a
