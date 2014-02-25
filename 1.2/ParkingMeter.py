
'''

	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.2

'''

class ParkingMeter(object):
	
	def __init__(self, maxTime, rate):
		super(ParkingMeter, self).__init__()
		self.maxTime = maxTime
		self.rate = rate
		self.remainingTime = 0

	#	Adds time based on the rate.
	#
	#	The assignment doesn't specify what happens with 
	#	remaining time over maxTime, so we just cap it.
	def insertQuarters(self, numberOfQuarters):
		
		#	If the maxTime is reached, do nothing
		if self.remainingTime == self.maxTime:
			return

		#	Add time to the meter
		newTime = min(maxTime, (self.remainingTime + (numberOfQuarters * self.rate)))
		self.remainingTime = newTime

	#	Return the remaining time
	def checkRemainingTime(self):
		return remainingTime
