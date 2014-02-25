=begin

	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.3

=end

class Car

	attr :gasLevel
	attr :fuelEfficiency

	def initialize(fuelEfficiency)
		@fuelEfficiency = fuelEfficiency
		@gasLevel = 0
	end

	#	Returns the amount of gas
	def addGas(gasToAdd)
		self.gasLevel += gasToAdd	
	end

	#	Adds gas
	def getGas()
		return self.gasLevel
	end

	#	Simulates driving car for a given distance
	#	and reduces the amount of gase based on the 
	#	fuelEfficiency.
	def drive(distanceInMiles)
		
		gasToRemove = self.fuelEfficiency * distanceInMiles

		self.fuelLevel -= gasToRemove

		#	Ensure we don't go below zero gas
		self.fuelLevel = [self.fuelLevel, 0].max
	end
end