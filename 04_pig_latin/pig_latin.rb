#write your code here
def translate string
	init = string
	vowels = ['a', 'e', 'i', 'o', 'u']
	consonants = ['ch', 'qu', 'th', 'br']
	threeConsonants = ['thr', 'sch', 'squ']
	words = string.split(' ')

	if words.length > 1
		translated = []
		words.each do |x|
			newWord = translate(x)
			translated = translated.push newWord
		end
		return string = translated.join(' ')
	end

	vowels.each do |x|
		if x == string.downcase[0]
			string = string + 'ay'
		end
	end

	threeConsonants.each do |x|
		if x == string.downcase[0] + string.downcase[1] + string.downcase[2]
			letters = string.split('')
			letters = letters.push letters.shift(3)
			string = letters.join('') + 'ay'
		end
	end
	
	consonants.each do |x|
		if x == string.downcase[0] + string.downcase[1]
			letters = string.split('')
			letters = letters.push letters.shift(2)
			string = letters.join('') + 'ay'
		end
	end

	if string == init
		letters = string.split('')
		letters = letters.push letters.shift
		string = letters.join('') + 'ay'
	end
	
	string

end