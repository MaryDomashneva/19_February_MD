def greeting(name, mname, surname)
  if mname.empty?
    full_name1 = name + ' ' + surname
    puts 'Ok. Your full Name is '+ full_name1 + '? What a lovely Name!'
    puts 'Nice to meet you '+ full_name1 + '!'
    puts 'Did you know that there are ' + full_name1.length.to_s + ' characters in your name, ' + full_name1 + '?'
  else
    full_name = name + ' '+ mname + ' ' + surname
    puts 'Ok. Your full Name is ' + full_name +'?' '  What a lovely Name!'
    puts 'Nice to meet you '+ name + ' '+ mname + ' ' + surname + '!'
    puts 'Did you know that there are ' + full_name.length.to_s + ' characters in your name, ' + full_name + '?'
  end
end
def antondonotcry(repeat_phrase)
  answer3 = gets.chomp
  if answer3.match(/^[[:alpha:][:blank:]]+$/)
    return answer3
  else
    puts repeat_phrase
    antondonotcry(repeat_phrase)
  end
end
def mnquestion(name, surname)
  answer = antondonotcry('Please, type "Yes" or "No"')
  if answer.downcase == 'yes'
    puts 'Please, type in your Middle Name.'
    mname = gets.chomp
    greeting(name, mname, surname)
  elsif answer.downcase == 'no'
    puts 'Ok, you do not have a Middle Name.'
    greeting(name, '', surname)
  elsif answer.match(/^[[:alpha:][:blank:]]+$/)
    puts 'Is it your Name? please, type (yes/no)'
    answer2 = gets.chomp
    if answer2.downcase == 'yes'
      mname = answer
      greeting(name, mname, surname)
    else
      puts 'Ok, I will repit a question. Do you have a Middle Name? (yes/no)'
      mnquestion(name, surname)
    end
  end
end
puts 'Hello, please tell us your First Name'
name = antondonotcry('Please, type only letters')
puts 'Now, please tell us your Surname'
surname = antondonotcry('Please, type only letters')
puts 'Do you have a Middle Name? (yes/no)'
mnquestion(name, surname)
