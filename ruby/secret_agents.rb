# - get a string from user
# - set string to variable
# - get string length
# - loop over string
# 	- skip if it is a space
# 	- advance any letter

# - get string
# - get string length
# - set alphabet to string
# - loop over string 
# 	- search alphabet for each letter in string
# 	- subtract one from index
# 	- write to an array the new letter

# - ask the user if they want to encrypt or decrypt a password
# 	- if encrypt
# 		- get the password from the user
# 		- run encrpyt method
# 		- print var to screen
# 	- if decrypt
# 		- get the password from the user
# 		- run decrypt method
# 		- print var to screen


# METHODS

def encrypt(string)
	len = string.length

	counter = 0
	newstring = Array.new
	while counter < len
		if string[counter] == " "
			counter += 1
		# could add in an elsif statment to handle the letter z
		# would maybe have to back it to single a
		# no other a's could appear so its safe
		else
			letter = string[counter]
			nextletter = letter.next
			newstring[counter] = nextletter

			counter += 1
		end
	end
	message = newstring.join
end

def decrypt(string)
	len = string.length
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	counter = 0
	newstring = Array.new
	while counter < len
		letter = string[counter]
		index = alphabet.index(letter)
		indexBefore = index - 1
		newstring[counter] = alphabet[indexBefore]

		counter += 1
	end
	message = newstring.join
end

def getPassword()
	puts "What is the password?"
	password = gets.downcase.chomp
end

# DRIVER CODE

puts "Would you like to Encrypt or Decrypt a password?"
while choice = gets.downcase.chomp
	if choice == "encrypt"
		puts encrypt(getPassword())
		break
	elsif choice == "decrypt"
		puts decrypt(getPassword())
		break	
	else
		puts "Not a valid option, try again:"	
	end
end




# decrypt(encrypt('abz'))
# nested method call will exectue the interior method 
# first and then pass its return value to the exterior method


