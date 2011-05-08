# week 2 :: chapter 6 LTP :: Mark Hutchison
puts 'Enter start year'
startyear = gets.chomp.to_i.abs
puts 'Enter end year'
endyear = gets.chomp.to_i.abs
if startyear > endyear
	tempyear = startyear
	startyear = endyear
	endyear = tempyear
end
currentYear = startyear
while currentYear <= endyear
	if currentYear % 400 == 0 or (currentYear % 4 == 0 and not currentYear % 100 == 0)
		puts currentYear
	end
	currentYear = currentYear + 1
end


	
