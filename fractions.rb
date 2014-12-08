require 'rational'
#Methods Definition Section
#********************************************************************
def add_frac(a,b)
	denom = a[1].lcm(b[1])
        num = a[0] + b[0]
	reduce_frac(num,denom)
end

def mult_frac(a,b)
	num = a[0]*b[0]
	denom = a[1]*b[1]
	reduce_frac(num,denom)
end

def sub_frac(a,b)
	denom = a[1].gcd(b[1])
	num = a[0] - b[0]
	reduce_frac(num,denom)
end

def div_frac(a,b)
	num1 = a[1]
	denom1 = a[0]
	num2 = b[1]
	denom2 = b[0]
	denom = num1 * num2
	num = denom1 * denom2
	reduce_frac(num,denom)
end

def reduce_frac(a,b)
	redux = a.gcd(b)
	num = a / redux
	denom = b / redux
	print_frac(num,denom)
end

def to_decimal(a,b)
	fraction1 = a[0]/a[1].to_f
	fraction2 = b[0]/b[1].to_f
	puts "Your First Decimal is " + fraction1.round(2).to_s
	puts "Your Second Decimal is " + fraction2.round(2).to_s
end

def invert_frac(a,b)
	denom = a[0]
	num = a[1]
	print_frac(num,denom)
	denom = b[0]
	num = b[1]
	print_frac(num,denom)
end

def print_frac(a,b)
	puts "One of Your Answers is..."
	puts "  " + a.to_s + "  "
	puts "------"
	puts "  " + b.to_s + "  "
end

def reduce2(a,b)
	redux = a.gcd(b)
        num = a / redux
        denom = b / redux
        print_frac(num,denom)
        redux = a.gcd(b)
        num = a / redux
        denom = b / redux
        print_frac(num,denom)
end
#********************************************************************
system "clear"
puts "Welcome to Tristan's Patented Fraction Calculator..."
puts "Enter two fractions like this, one whole fraction at a time, pressing enter in between the fractions. (ie. 'a/b' 'enter' 'c/d')"

frac1 = gets.chomp.split("/")
frac2 = gets.chomp.split("/")

frac1.collect! {|x| x.to_i}
frac2.collect! {|x| x.to_i}

puts "Would you like to add(1), subtract(2), multiply(3), divide(4), reduce(5), invert(6), or turn to decimal(7) your fractions?"
puts "Enter your selection from 1-7..."

choice = gets.to_i

case choice
	when 1
		add_frac(frac1,frac2)
	when 2
		sub_frac(frac1,frac2)
	when 3
		mult_frac(frac1,frac2)
	when 4
		div_frac(frac1,frac2)
	when 5
		reduce_frac(frac1,frac2)
	when 6
		invert_frac(frac1,frac2)
	when 7
		to_decimal(frac1,frac2)
end
