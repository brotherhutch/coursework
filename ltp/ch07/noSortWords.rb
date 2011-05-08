# week 2 :: chapter 7 LTP :: Mark Hutchison
words = []
word = ' '
puts 'Enter words to sort (enter nothing and press return to begin sorting):'
while word != ''
	word = gets.chomp
	words.push word
end
words.pop # gets rid of the enter

sortedWords = []

while words.length > 0
	checkingWord = words[0]
		#get smallest (first alphabetically) word in array
		words.each do |current|
			if current.downcase < checkingWord.downcase # use > to sort descending
				checkingWord = current
			end
		end

		#find the checkingWord in the array and delete it
		i = 0
		while i < words.length
			if words[i] == checkingWord
				words.delete(words[i])
			end
			i = i + 1
		end

		#add the checkingWord to the end of the new array
		sortedWords.push checkingWord
end
puts sortedWords