=begin
	
	Moshe Berman
	Professor Zhou
	CISC 3150
	Spring 2014

	Assignment 1.1

=end

class Rational

	attr :numerator
	attr :denominator

	def initialize(numerator, denominator)
		@numerator = numerator
		@denominator = denominator
	end


	#	Adds the supplied rational to the receiver - 
	def add(rational)

		if not rational.is_a?(Rational)
			return None
		end

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

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
			return None
		end

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

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
			return None
		end

		#	Copy the second rational
		temp = Rational(rational.numerator, rational.denominator)

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
			return None
		end

		#	Copy the second rational
		temp = Rational(rational.denominator, rational.denominator)

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

r  = Rational.new(4,5)
r2 = Rational.new(1,5)
r3 = r.add(r2)

puts r3.numerator
puts r3.denominator