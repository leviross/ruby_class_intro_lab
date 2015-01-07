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

	# edit some camelCase to snake_case
	attr_accessor :current_speed, :topSpeed

	def initialize model, ownerName, topSpeed
		@topSpeed = topSpeed
		@model = model
		@ownerName = ownerName
	end

	def get_top_speed 
		@topSpeed
	end

	def set_top_speed newTopSpeed
		@newTopSpeed = newTopSpeed
		@topSpeed = @newTopSpeed
	end

	def accelerate_to increase
		@increase = increase
		if (@increase < @topSpeed) 
			@current_speed = @increase
			@current_speed
		else 
			"You can not drive faster than #{@topSpeed}"	
		end
	end

end

ship = Starship.new "ship", "Levi", 100
# p ship
# p ship.get_top_speed
# p ship.set_top_speed(150)

# # p ship.topSpeed

# p ship.accelerate_to(201)


# 4) Dice

class Dice
	
	attr_accessor :number_of_sides

	def initialize number_of_sides
		@number_of_sides = number_of_sides
		@prev_rolls = []
	end

	def prev_rolls 
		@prev_rolls
	end

	def roll 
		currentRoll = rand(1..@number_of_sides)
		@prev_rolls << currentRoll
		currentRoll
		
	end

	def get_rolls 
		@prev_rolls
	end


end


casino = Dice.new 6
#casino2 = Dice.new 5
# casino.roll
# casino.roll
# casino.roll

casino.number_of_sides.times do
	puts casino.roll 
	sleep 0.5	
end

p casino.get_rolls







