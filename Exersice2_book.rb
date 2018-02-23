elsif mname = no
  puts 'Ok, thanks, you do not have a Middle Name'
  puts 'So, your full Name is '+ name + ' ' + surname + '? What a lovely Name!'
  puts 'Nice to meet you '+ name + ' ' + surname + '!'
else mname = ''
  puts 'Is it your Middle Name? Please, say "Yes" or "No".'
  frase = '"Yes" or "No"'
  frase = gets.chomp
  if frase = yes
    puts 'So, your full Name is '+ name + ' '+ mname + ' ' + surname + '? What a lovely Name!'
    puts 'Nice to meet you '+ name + ' '+ mname + ' ' + surname + '!'
  elsif frase = no
    puts 'I will repit my question: "Do you have a Middle Name? Please, say "Yes" or "No"."'
    if frase = yes
    puts 'Please, type in your Moddle Name.'
    mname = gets.chomp
    puts 'So, your full Name is '+ name + ' '+ mname + ' ' + surname + '? What a lovely Name!'
    puts 'Nice to meet you '+ name + ' '+ mname + ' ' + surname + '!'
  elsif frase = no
    puts 'Ok, thanks, you do not have a Middle Name'
    puts 'So, your full Name is '+ name + ' ' + surname + '? What a lovely Name!'
    puts 'Nice to meet you '+ name + ' ' + surname + '!'
