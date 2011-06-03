# week 5 :: chapter 10 LTP :: Mark Hutchison
def logit strDesc, &doThisBlock
	puts "Starting block (" + strDesc + ")..."
	puts "Block (" + strDesc + ") is complete, and returned: " + doThisBlock.call.to_s
end

logit "block 1" do
	logit "block 2" do
		logit "block 3" do
			"I like Thai food!"
		end
		5
	end
	false
end



