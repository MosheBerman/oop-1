=begin

	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.2

=end

class ParkingMeter

	attr_accessor :maxTime
	attr_accessor :rate
	attr_accessor :remainingTime

	# 	Initializer
	def initialize(maxTime, rate)
		@maxTime = maxTime
		@rate = rate
		@remainingTime = remainingTime
	end

	#	Adds time based on the rate.
	#
	#	The assignment doesn't specify what happens with 
	#	remaining time over maxTime, so we just cap it.
	def insertQuarters(numberOfQuarters)
		if self.remainingTime == self.maxTime:
			return
		end	

		newTime = [(self.remainingTime + (numberOfQuarters * self.rate)), self.remainingTime].min

		self.remainingTime = newTime
	end

	# => getter for remainingTime is synthesized by Ruby

end