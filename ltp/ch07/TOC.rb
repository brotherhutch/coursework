# week 2 :: chapter 7 LTP :: Mark Hutchison
titles = ['Numbers', 'Letters', 'Variables']
pages = ['1','72','118']
i = 0
puts
puts 'Table of Contents'.center(48)
puts
while i < titles.length
	puts ('Chapter ' + (i + 1).to_s + ':').ljust(15) + titles[i].ljust(35) + pages[i].rjust(5)
	i = i + 1
end
