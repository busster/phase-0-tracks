
# - create 2 strings
# 	- one with alphabetical string of only consonants
# 	- one alphabetical but with first char moved to end
# 		- make string into array and rotate array
# 		- make back into string
# - get a name from user
# 	- downcase name
# 	- move consonants in name to next consonant with .tr(alphabetical cons, alphabetical with first char at end)
# 					---- this maps the next letter in place in the string and handles the edge case-------
# 	- move vowels in name to next vowel with .tr(aeior, eioua)
# 					---- same concept -----
# 	- split name into array of first and last
# 	- rotate array to make first name now the last name
# 	- for each word in array, capitalize the word




# - make an empty array
# - make a switch to toggle program on or off
# - while switch on
# 	- get some name input from user
# 	- if user inputs quit
# 		- toggle off
# 	- elsif user enters empty string
# 		- loop back to beginning
# 	- else
# 		- run write name input to array
# - iterate through array and run program on each item
# - print results




# ##### EXAMPLE #####
# < Felicia Torres
# > Vussit Gimodoe






### METHODS

# def makeAlphabet()
# 	alphabet = []
# 	letter = "a"
# 	count = 0
# 	while count < 26
# 		alphabet.push(letter)
# 		letter = letter.next
# 		count += 1
# 	end
# 	return alphabet
# end

# def remConsRot(alphabet)
# 	alphabet = alphabet.join
# 	no_cons = alphabet.tr('aeiou','')
# 	no_cons = no_cons.split('')
# 	no_cons_rot = no_cons.rotate
# 	no_cons = no_cons.join
# 	no_cons_rot = no_cons_rot.join
# 	return no_cons, no_cons_rot
# end

# def changeName(name)
# 	no_cons, no_cons_rot = remConsRot(makeAlphabet())

# 	name = name.downcase

# 	pseudoname = name.tr(no_cons, no_cons_rot)
# 	pseudoname = pseudoname.tr('aeiou', 'eioua')

# 	pseudoname = pseudoname.split(' ')
# 	pseudoname_rev = pseudoname.rotate

# 	pseudoname_rev.each {|word| word.capitalize!}

# 	pseudoname_rev = pseudoname_rev.join(' ')
	
# 	return pseudoname_rev
# end

# def createPseudoname(input)
# 	name = input
# 	new_name = changeName(name)
# 	puts name + ", is now: " + new_name
# end




# ### DRIVER CODE

# names = []

# switch = false
# while switch == false
# 	print "Enter a name, (Or 'quit' to exit program): "
# 	input = gets.chomp
# 	if input.downcase == "quit" 
# 		puts "\n"
# 		switch = true	
# 	elsif input == ""				
# 	else
# 		names.push(input)
# 		puts "\n"
# 	end
# end

# names.each do |name|
# 	createPseudoname(name)
# end


############################################################
######## Alternate way to accomplish the task using ########
######## mainly iteration through data structures   ########
############################################################



### METHODS


def makeAlphabet()
	alphabet = []
	letter = "a"
	count = 0
	while count < 26
		alphabet.push(letter)
		letter = letter.next
		count += 1
	end
	return alphabet
end

def letterList()
	alphabet = makeAlphabet()
	alphabet = alphabet.join
	no_cons = alphabet.tr('aeiou','')
	no_cons = no_cons.split('')
	vowel = "aeiou"
	vowel = vowel.split('')
	return vowel, no_cons
end






def splitName(name)
	name = name.downcase
	first, last = name.split()
	first = first.split("")
	last = last.split("")
	return first, last
end


def letterCheck(char)
	vowel, no_cons = letterList()
	if no_cons.include? char.downcase
		return "consonant"
	elsif vowel.include? char.downcase
		return "vowel"
	else
		return "not_letter"
	end

end	


def iterateThroughString(full_name)
	full_name.map! do |name|
		name.map! do |char|
			if letterCheck(char) == "consonant"
				advanceConsonant(char)
			elsif letterCheck(char) == "vowel"
				advanceVowel(char)
			elsif letterCheck(char) == "not_letter"
				p "not_letter"
			end
		end	
	end
	return full_name
end	





def advanceVowel(char)
	vowel, no_cons = letterList()
	length = vowel.length
	index = vowel.index(char)
	if length - 1 == index
		next_index = 0
	else
		next_index = index + 1
	end
	return next_letter = vowel[next_index]
end


def advanceConsonant(char)
	vowel, no_cons = letterList()
	length = no_cons.length
	index = no_cons.index(char)
	if length - 1 == index
		next_index = 0
	else
		next_index = index + 1
	end
	return next_letter = no_cons[next_index]
end	




def nameToString (name)
	name = name.rotate
	first, last = name
	first = first.join('')
	last = last.join('')
	name = [first, last]
	name.each {|word| word.capitalize!}
	name.join(' ')
end



### DRIVER CODE


names = []

switch = false
while switch == false
	print "Enter a name, (Or 'quit' to exit program): "
	input = gets.chomp
	if input.downcase == "quit" 
		puts "\n"
		switch = true	
	elsif input == ""				
	else
		names.push(input)
		puts "\n"
	end
end

names.each do |name|
	new_name = iterateThroughString(splitName(name))
	new_name = nameToString(new_name)
	p "#{name} is now #{new_name}"
end

