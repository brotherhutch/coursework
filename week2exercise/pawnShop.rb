# week two Exercise :: The Pawn shop
inventory = [
	['Apple II (1997)', 80],
	['Baseball (signed, Babe Ruth)', 50],
	['Oregon Trail (1974)', 10],
	['Baseball bat (Louisville Slugger, Babe Ruth owned)', 500],
	['Superman comics (complete set)', 100],
	['Keyboard (IBM Model M)', 15],
	['Learn to Program by Chris Pine (paperback)', 20],
	['iphone 5 (pre-release found in bar)', 5000]
]
items = []
items.replace(inventory)
cart = []
inputChoice = ' '
total = 0
while true
	# List Items
	puts
	puts 'Welcome to The Elderly Uncle\'s Pawn Shop'.center(60)
	puts
	i = 0
	j = 0
	if items.length == 0
		puts 'Nothing in stock.'
	end
	while i < items.length
		puts (i+1).to_s + '. ' + items[i][0].ljust(50) + "$#{items[i][1]}".to_s.rjust(10)
		i = i + 1
	end
	puts
	puts 'Your shopping cart:'
	puts
	if cart.length == 0
		puts 'Your cart is empty.'
	end
	while j < cart.length
		puts (j+1).to_s + '. ' + cart[j][0].ljust(50) + "$#{cart[j][1]}".to_s.rjust(10)
		j = j + 1
	end

	#Add item(s) to cart
	puts '-----'.rjust(63)
	puts 'Subtotal:'.ljust(53) + "$#{total}".to_s.rjust(10)
	puts
	puts 'Choose an item to add to your cart.'
	puts 'Enter anything else to continue:'
	inputChoice = gets.chomp.to_i.abs
	if inputChoice ==  0
		break
	elsif inputChoice > items.length
		puts
		puts
		puts
		puts '----------------------------'
		puts 'Sorry, there is no item #' + inputChoice.to_s
		puts '----------------------------'
	elsif inputChoice <= items.length
		total = total + items[(inputChoice - 1)][1]
		cart.push items[(inputChoice - 1)]
		items.delete(items[(inputChoice - 1)])
	end
end

# complete transaction
puts 'Thank you for shopping at The Elderly Uncle\'s Pawn Shop!'
puts 'You have purchased the items in your cart.'
puts 'See items and subtotal above.'
puts

#discounts
bundleCounter = 0
cart.each do |item|
	if item.index("Apple II (1997)") != nil or item.index("Oregon Trail (1974)") != nil
		bundleCounter = bundleCounter + 1
	end
end
if cart.length  >= 3
	puts 'Discount: 3 + items! (5% off order)'
	total = total - (0.05 * total)
end
if bundleCounter == 2
	puts 'Discount: Apple II and Oregon Trail (10% off of these items)'
	total = total - (0.1 * (inventory[0][1] + inventory[2][1]))
end
puts '========'.rjust(63)
puts "Grand total: $#{total.round(2)}".rjust(63)

#update inventory with remaining items
inventory.replace(items)
