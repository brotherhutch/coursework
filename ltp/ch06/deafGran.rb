# week 2 :: chapter 6 LTP :: Mark Hutchison
say = '...'
count = 0
puts 'Grandma is "listening"'
while count < 3
	while say != 'BYE'
		say = gets.chomp
		if say == say.upcase and say != 'BYE'
			year = 1900 + (rand(21) + 30)
			puts 'NO, NOT SINCE ' + year.to_s + '!'
			count = 0
			else if say != 'BYE'
				puts 'HUH?! SPEAK UP, SONNY!'
			count = 0
			end
		end
	end
	count = count + 1
	say = '...'
	if count < 3
		puts 'EH? LET ME TURN UP MY HEARING AID!'
	end
end
puts 'WELL YOU DON\'T HAVE TO SHOUT! BYE!'
