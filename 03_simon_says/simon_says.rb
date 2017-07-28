#write your code here
def echo string
	string
end

def shout string
	string.upcase
end

def repeat string, num = 2
 stringArray = []
 num.times do 
 	stringArray = stringArray.push string
 end
 output = stringArray.join(' ')
end

def start_of_word string, num
	stringArray = string.split('')
	startArray = []
	initial = 1
	while initial <= num
		startArray = startArray.push stringArray[initial-1]
		initial = initial + 1
	end
	output = startArray.join('')
end

def first_word string
	stringArray = string.split(' ')
	output = stringArray[0]
end

def titleize string
	string = string.downcase
	stringArray = string.split(' ')
	x = 0
	while stringArray[x]
		if (stringArray[x].length <= 4 and x != 0 and x != stringArray.length - 1)
			stringArray[x] = stringArray[x]
			x = x + 1
		else
		stringArray[x] = stringArray[x].capitalize
		x = x + 1
		end
	end
	stringArray.join(' ')
end