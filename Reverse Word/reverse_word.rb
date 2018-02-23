def reverse_word(sentence)
  if sentence =~ / /
    return " "
  else
    return sentence.split(" ").map{|word| word.reverse}.join(" ")
  end
end
