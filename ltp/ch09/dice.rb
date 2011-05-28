# week 4 :: chapter 9 LTP :: Mark Hutchison
class Die
  
  def initialize
    #  I'll just roll the die, though we
    #  could do something else if we wanted
    #  to, like setting the die with 6 showing.
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def showing
    @numberShowing
  end
  
  def set setNum
    setNum = setNum.to_i.abs
	if setNum < 1 or setNum > 6
		return puts "You must enter a valid number!"
	end
	@numberShowing  = setNum
	showing
  end
  
end

puts Die.new.showing
puts Die.new.set('NaN') # bad
puts Die.new.set('7') # bad
puts Die.new.set('3.6') # = 3
puts Die.new.set('4') # good



