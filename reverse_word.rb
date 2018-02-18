def reverser(sentence)
  if sentence =~ / /
    return " "
  else
    return sentence.split(" ").map{|word| word.reverse}.join(" ")
  end
end

puts reverser(" ")

#change
