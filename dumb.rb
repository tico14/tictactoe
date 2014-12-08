def reduce_frac(a,b)
        redux = a.gcd(b)
        num = a / redux
        denom = b / redux
        puts num
	puts denom
	redux = a.gcd(b)
        num = a / redux
        denom = b / redux
	puts num
	puts denom
end

reduce_frac(6,12)

