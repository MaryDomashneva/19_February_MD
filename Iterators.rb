list = []
comand = ''
while comand != "\n"
  comand = gets
  if comand == "\n"
    puts "end\n"
    puts list.sort
  else
    list.push(comand)
  end
end
