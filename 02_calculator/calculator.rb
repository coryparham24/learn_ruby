#write your code here
def add num1, num2
	add = num1 + num2
end

def subtract num1, num2
	subtract = num1 - num2
end

def sum nums
	sum = 0
	nums.each do |x|
		sum = sum + x
	end
	sum
end

# Extra Credit
def multiply nums
	product = 1
	nums.each do |x|
		product = product * x
	end
	product
end

def power num1, num2
	power = num1 ** num2
end

def factorial num
	if num == 0
		factorial = 1
	elsif num > 0
		factorial = 1
		numArray = []
		while num > 0
			numArray = numArray.push num 
			num = num - 1
		end
		numArray.each do |x|
			factorial = factorial * x
		end
	else
		factorial = 0.0 / 0.0
	end
	factorial
end