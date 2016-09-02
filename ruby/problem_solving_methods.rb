# RELEASE 0

arr = [42, 89, 23, 1]

def search_array(array, int)
	in_array = false
	index = 0

	array.each do |num| 
		if int == num
			in_array = true
			return index
		end
		index += 1
	end 
	if in_array == true
	else 
		return nil
	end
end


# DRIVER CODE

# p search_array(arr, 1)
# returns => 3
# p search_array(arr, 24)
# returns => nil



# RELEASE 1

def fib(int)
	number = [0,1]
	while number.length < int
		number << number[-2] + number[-1]
	end
	return number
end

# DRIVER CODE

# p fib(6)
# p fib(100)[-1] == 218922995834555169026
# returns => true
# so we know it works




# RELEASE 2

# - input an array of letters
# - set alphabet to variable to compare to
# - create method 
# 	- iterates through array
# 		- set boolean to false
# 		- get current index letter and next index letter
# 		- get index of each letter in the alphabet
# 		- compare the indexs 
# 		- swap if current letter index in alphabet is greater than next letter index in alphabet
# 		- set boolean to true
# 	- break if boolean is false
# - output array of letters alphabetized 


# [a,z,e,g,j]
# [a,e,g,j,z]


def assign_index(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	alphabet = alphabet.split("")

	alphabet.each do |letter|
		if char == letter
			return alphabet.index(letter)
		end
	end
end

def alphabetize(letters)
	length = letters.length
	
	
	loop do
		swapped = false
		(length-1).times do |i|
			if assign_index(letters[i]) >  assign_index(letters[i+1])
				letters[i], letters[i+1] = letters[i+1], letters[i]
				swapped = true
			end

		end

	break if not swapped
	end
	letters
	
end

# p assign_index("z")

a = ["a","z","e","g","j"]
p alphabetize(a)