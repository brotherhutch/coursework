# week 5 :: chapter 10 LTP :: Mark Hutchison
# This version achieves the same result without the global variable
def logit strDesc, indentTracker, &doThisBlock
	indent = ''
	indentTracker.times do
		indent = indent + '   '
	end
	puts indent + "Starting block (" + strDesc + ")..."
	puts indent + "Block (" + strDesc + ") is complete, and returned: " + doThisBlock.call.to_s
end

logit "block 1", 0 do
	logit "block 2a", 1 do
		logit "block 3", 2 do
			"I like Thai food!"
		end
		5
	end
	logit "block 2b", 1 do
		"I like Indian food!"
	end
	false
end