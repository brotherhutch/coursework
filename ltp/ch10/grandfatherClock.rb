# week 5 :: chapter 10 LTP :: Mark Hutchison
def hourlyDo &doThisBlock
	currenthour =  Time.now.hour
	if currenthour > 12
		currenthour = currenthour - 12
	end
	currenthour.times do
		doThisBlock.call
	end
end

hourlyDo do
	puts 'DONG!'
end

message = ''
count = 1
hourlyDo do
	message = message + '| ' + count.to_s + ' '
	count = count + 1
end
puts message

