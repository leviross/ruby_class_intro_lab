# 1) SuperHero
class Superhero 
	

	def initialize first_name, last_name
		@first_name = first_name
		@last_name = last_name
	end

	def superPunch
		return "WHAM!"
	end
	
end

me = Superhero.new "Levi", "Ross"
puts "First Superhero is:"
p me

p me.superPunch

# 2) Robot

class Robot

	def initialize name, purpose
		@name = name
		@purpose = purpose
	end

	def greet
		"beep boop"
	end

end

me = Robot.new "Levi", "Terminator"

p me.greet


# 3) Starship

class Starship

	@@topSpeed = 100
	attr_accessor :currentSpeed

	def initialize model, ownerName
		@model = model
		@ownerName = ownerName
	end

	def topSpeed 
		@@topSpeed
	end

	def setTopSpeed newTopSpeed
		@newTopSpeed = newTopSpeed
		@@topSpeed = @newTopSpeed
	end

	def accelerateTo fast
		@fast = fast
		if (@fast < @@topSpeed) 
			@currentSpeed = @fast
			@currentSpeed
		else 
			"You can not drive faster than #{@@topSpeed}"	
		end
	end

end

ship = Starship.new "ship", "Levi"
p ship
p ship.topSpeed
p ship.setTopSpeed(150)

# p ship.topSpeed

p ship.accelerateTo(201)


# 4) Dice

class Dice
	@@prevRolls = []

	def initialize numberOfSides
		@numberOfSides = numberOfSides
	end

	def prevRolls 
		@@prevRolls
	end

	def roll 
		currentRoll = rand(1..@numberOfSides)
		@@prevRolls.push(currentRoll)
	end

	def getRolls 
		@@prevRolls
	end


end


casino = Dice.new 6
#casino2 = Dice.new 5
casino.roll
casino.roll
casino.roll


p casino.getRolls
#p casino2.prevRolls







