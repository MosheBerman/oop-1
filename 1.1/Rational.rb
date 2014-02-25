=begin
	
	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.1

=end

class RationalNumber

	attr_accessor :numerator
	attr_accessor :denominator

	def initialize(numerator, denominator)
		@numerator = numerator
		@denominator = denominator
	end


	#	Adds the supplied rational to the receiver - 
	def add(rational)

		if not rational.is_a?(Rational)
			return nil
		end

		#	Copy the second rational
		temp = RationalNumber.new(rational.numerator, rational.denominator)

		#	Make sure we have LCD 
		if is_a?(rational.denominator)
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator
		end

		#	Now add...
		self.numerator += temp.numerator
		self.denominator += temp.denominator

		return self
	end

	#	Subtract 
	def subtract(rational)

		if not rational.is_a?(Rational)
			return nil
		end

		#	Copy the second rational
		temp = RationalNumber.new(rational.numerator, rational.denominator)

		#	Make sure we have LCD 
		if not self.denominator == rational.denominator
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator
		end

		#	Now subtract...
		self.numerator -= temp.numerator
		self.denominator -= temp.denominator

		return self
	end

	#	Multiply 
	def multiply(rational)

		if not rational.is_a?(Rational)
			return nil
		end

		#	Copy the second rational
		temp = RationalNumber.new(rational.numerator, rational.denominator)

		#	Make sure we have LCD
		if not self.denominator == rational.denominator
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator
		end

		#	Now add...
		self.numerator *= temp.numerator
		self.denominator *= temp.denominator

		return self
	end

	#	Divide 
	def divide(rational)

		if not rational.is_a?(Rational)
			return nil
		end

		#	Copy the second rational
		temp = RationalNumber.new(rational.denominator, rational.denominator)

		#	Make sure we have LCD
		if not self.denominator == rational.denominator
			temp.denominator = rational.denominator * self.denominator
			temp.numerator = rational.numerator * self.denominator
		end

		#	Flip the numerator and denominator
		tempVal = temp.denominator
		
		temp.denominator = temp.numerator
		temp.numerator = tempVal

		return self
	end
end


r  = RationalNumber.new(4,5)
r2 = RationalNumber.new(1,5)
r3 = r.add(r2)

puts r.numerator.to_s