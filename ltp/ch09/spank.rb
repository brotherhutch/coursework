# week 4 :: chapter 9 LTP :: Mark Hutchison
puts "Please enter your birthdate:"
puts "First, the year (YYYY)"
year = gets.chomp
puts "Next, the month"
month = gets.chomp
puts "Finally, the day"
day = gets.chomp
timeBorn = Time.mktime(year, month, day)
now = Time.new
age = ((now - timeBorn) / 31556926).to_int #seconds in a year
puts "Therefore you get #{age} spanks!"
while age > 0
	puts "SPANK! #{age}"
	age = age -1
end