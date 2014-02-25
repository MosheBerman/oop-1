'''

	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.1

'''

'''
	This class represents a rational number. 
'''



class Rational(object):
	def __init__(self, numerator, denominator):
		super(Rational, self).__init__()
		self.numerator = numerator
		self.denominator = denominator


	#	Adds the supplied rational to the receiver - 
	def add(self, rational):

		if not type(rational) is Rational:
			return None

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

		#	Make sure we have LCD 
		if not self.denominator == rational.denominator:
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator

		#	Now add...
		self.numerator += temp.numerator

		return self

	#	Subtract 
	def subtract(self, rational):
		if not type(rational) is Rational:
			return None

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

		#	Make sure we have LCD 
		if not self.denominator == rational.denominator:
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator

		#	Now subtract...
		self.numerator -= temp.numerator

		return self

	#	Multiply 
	def multiply(self, rational):
		if not type(rational) is Rational:
			return None

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

		#	Make sure we have LCD
		if not self.denominator == rational.denominator:
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator

		#	Now add...
		self.numerator *= temp.numerator
		self.denominator *= temp.denominator

		return self


	#	Divide 
	def divide(self, rational):
		if not type(rational) is Rational:
			return None

		#	Copy the second rational
		temp = Rational(rational.denominator, rational.denominator)

		#	Make sure we have LCD
		if not self.denominator == rational.denominator:
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator

		#	Flip the numerator and denominator
		tempVal = temp.denominator
		
		temp.denominator = temp.numerator
		temp.numerator = tempVal

		#	Then multiply
		return self.multiply(temp)


