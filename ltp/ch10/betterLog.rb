# week 5 :: chapter 10 LTP :: Mark Hutchison
$indent_tracker = 0
def logit strDesc, &doThisBlock
indent = ''
$indent_tracker.times do
	indent += '  '
end
$indent_tracker += 1
	puts indent + "Starting block (" + strDesc + ")..."
	puts indent + "Block (" + strDesc + ") is complete, and returned: " + doThisBlock.call.to_s
$indent_tracker -= 1
end

logit "block 1" do
	logit "block 2a" do
		logit "block 3" do
			"I like Thai food!"
		end
		5
	end
	logit "block 2b" do
		"I like Indian food!"
	end
	false
end