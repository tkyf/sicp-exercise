// for 1-7

def square(x){
	return x * x
}

def average(x, y){
	return (x + y) / 2.0
}

def sqrt_iter(guess, x){
	if (good_enough(guess, x)){
		return guess
	} else {
		return sqrt_iter(improve(guess, x), x)
	}
}

def improve(guess, x){
	return average(guess, (x/guess))
}

def good_enough(guess, x){
	return ((square(guess) - x).abs() < 0.001)
}

def sqrt_g(x){
	return sqrt_iter(1.0, x)
}

println sqrt_g(args[0] as BigDecimal)


/* result */
/*
$ groovy sqrt_2.groovy 1e15
31622776.6016837933199889354445
$ groovy sqrt_2.groovy 1e20
10000000000.00000000000002663412042673
sh-3.1$
*/

