puts 1+2
puts 1.0+2.0
puts 2.0*3.0
puts 5.0-8.0
puts 9.0/2.0
puts 1+2
puts 2*3
puts 5-8
puts 9/2
puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -52
puts "Current Time : " + Time.new.inspect
time = Time.new
puts time.year
puts 365 * 24
puts 30/3*24*60
require 'date'
puts Date.new(2017,12,31).yday
days = Date.new(2017,12,31).yday
hours = 24
puts days * hours
arr = [30, 31]
decade = arr.inject{ |sum, el| sum + el }.to_f / arr.size
minutes = 60
puts decade / 3 * minutes * hours
a = Date.new(1990,10,13).mjd
b = Date.new(2017,12,13).mjd
seconds = 60
puts (b - a) * hours * minutes * seconds
c = Time.new
d = Date.new(1990,10,13).to_time
puts (c - d)
e = Date.new(3000,10,13).mjd
puts (e - b) / 7
puts Time.new - 1298000000
f = Date.new(1976,10,26).year
g = Time.new.year
puts (g - f)
