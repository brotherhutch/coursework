# week 2 :: chapter 6 LTP :: Mark Hutchison
beer = 99
ofBeer = "bottles"
while beer > 0
puts ''
puts beer.to_s + ' ' + ofBeer + ' of beer on the wall,'
puts beer.to_s + ' ' + ofBeer + ' of beer;'
puts 'take one down; pass it around:'
beer = beer - 1
	if beer == 1
		ofBeer = "bottle"
	else
		ofBeer = "bottles"
	end
puts beer.to_s + ' ' + ofBeer + ' of beer on the wall.'
end
puts 'There is no more beer on the wall. Check the fridge.'