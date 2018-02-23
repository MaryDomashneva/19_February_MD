print "Pleathe enter a thtring: "
user_input = gets.chomp
while user_input == ""
print "Pleathe enter a thtring: "
user_input = gets.chomp
end
user_input.downcase!
if user_input.include?("ci")
  user_input.gsub!(/c/, "s")
  puts "Adios, #{user_input}!"
else
  print "There is no 'c' in the string"
end
