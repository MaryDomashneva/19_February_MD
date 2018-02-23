def answer
  a = gets.chomp
  if a == 'Yes'
    puts 'Hi, Mary! How are you?'
  else
    puts 'Huh?'
    answer
  end
end

def dialog
  b = gets.chomp
  if b == b.upcase
    puts 'I can not find my glasses. Where are they?'
  else
    puts 'Huh?'
    dialog
  end
end

def is_it_question?(sentense)
  return sentense.slice(sentense.length - 1) == '?'
end

with_question = ['Huh?', 'I can not hear you' , 'No. Not in this life', 'Yes. Everything for you']
since = 'No, since ' + (rand(21) + 1980).to_s
without_question = ['Are you hungry?', 'The wether is terrible', 'Could you help me to find my glasses', 'I remember when you were 5...']

puts 'Mary, is it you?'
answer
dialog

comand = ''
while comand != 'BYE, BYE, BYE'
  comand = gets.chomp
  if comand == 'BYE, BYE, BYE'
    puts 'BYE'
  else
    if is_it_question?(comand)
      question_or_since = rand(2)
      if question_or_since
      puts with_question[rand(with_question.length)]
      else
      puts 'No, since ' + (rand(21) + 1980).to_s
      end
    else
    puts without_question[rand(without_question.length)]
    end
  end
end
