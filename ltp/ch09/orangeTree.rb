# week 4 :: chapter 9 LTP :: Mark Hutchison
class OrangeTree
	def initialize
		@tall = 0
		@age = 0
		@fruit = 0
		@growth = 3
		@fecundity = 0
		puts "You've planted an orange seed."
	end
	
	def height
		@tall
	end
	
	def countTheOranges
		@fruit
	end
	
	def pickAnOrange
		@fruit = @fruit - 1
		if @fruit > 0
			puts "Mmmmmmmm orangey..."
		else
			@fruit = 0
			puts "Nothin' left but leaves."
		end
		puts "Oranges left: #{@fruit}"
	end
	
	def oneYearPasses
		@age = @age + 1
		@tall = @tall + @growth
		@fruit = 0 
		@fruit = @fruit + @fecundity
		
		if @age == 1
			@fecundity = @fecundity + rand(2)
		end
		if @age == 2
			@fecundity = @fecundity + rand(3) + 1
		end
		if @age == 5
			@fecundity = @fecundity + rand(4) + 2
			@growth = @growth - 1
		end
		if @age == 7
			@fecundity = @fecundity + rand(5) + 3
		end
		if @age == 8
			@fecundity = @fecundity + rand(5) + 4
			@growth = @growth - 1
		end
		if @age == 10
			@fecundity = @fecundity + rand(5) + 5
		end
		if @age == 11
			@fecundity = @fecundity + rand(5) + 6
			@growth = 0
		end
		if @age >= 11
			@fecundity = @fecundity + rand(6) + 5
		end
		if @age == 28
			puts "Your tree has died."
			exit
		end
		puts "One year passes..."
	end
end

myTree = OrangeTree.new
1000.times do
puts "Height: " + myTree.height.to_s
puts "Oranges this year: " + myTree.countTheOranges.to_s
puts myTree.pickAnOrange
puts myTree.pickAnOrange
puts myTree.oneYearPasses
end
