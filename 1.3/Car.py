'''
	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.3

'''

class Car(object):
	def __init__(self, fuelEfficiency):
		super(Car, self).__init__()
		self.fuelEfficiency = fuelEfficiency
		self.fuelLevel = 0	#	In gallons


	#	Returns the amount of gas
	def getGas(self):
		return self.fuelLevel

	#	Adds gas
	def addGas(self, gasToAdd):
		self.fuelLevel += gasToAdd
		
	#	Simulates driving car for a given distance
	#	and reduces the amount of gase based on the 
	#	fuelEfficiency.
	def drive(self, distanceInMiles):
		gasToRemove = self.fuelEfficiency * distanceInMiles

		self.fuelLevel -= gasToRemove

		#	Ensure we don't go below zero gas
		self.fuelLevel = max(self.fuelLevel, 0)
