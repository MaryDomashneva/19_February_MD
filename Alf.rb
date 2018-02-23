puts 'Hi, Alf! What do you want?'
print 'Alf:'
answe = gets.chomp
frase = 'No, you are to fat!'
puts frase.upcase
puts ''
lineWidth = 40
str = 'Table of Contents'
puts str.center lineWidth
def name(chapter_name, page, lineWidth = 40)
  puts chapter_name.ljust(lineWidth/2) + page.rjust(lineWidth/2)
end
name('Chapter 1: Numbers', '1')
name('Chapter 2: Letters', '72')
name('Chapter 3: Variables', '118')
