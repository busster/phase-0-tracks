# - Swap first and last name
# 	- run .split on the string to get both into an array
# 	- first, last = string.split()
# - change vowel to next vowel (a, e, i, o, u,)
# 	- can simply transform string
# 	- string.tr ('aeiou', 'eioua')
# - change consonants to next consonant in alphabet

# ##### EXAMPLE #####
# < Felicia Torres
# > Vussit Gimodoe






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

def remConsRot(alphabet)
	alphabet = alphabet.join
	no_cons = alphabet.tr('aeiou','')
	no_cons = no_cons.split('')
	no_cons_rot = no_cons.rotate
	no_cons = no_cons.join
	no_cons_rot = no_cons_rot.join
	return no_cons, no_cons_rot
end

def changeName(name)
	no_cons, no_cons_rot = remConsRot(makeAlphabet())

	name = name.downcase

	pseudoname = name.tr(no_cons, no_cons_rot)
	pseudoname = pseudoname.tr('aeiou', 'eioua')

	pseudoname = pseudoname.split(' ')
	pseudoname_rev = pseudoname.rotate

	pseudoname_rev.each {|word| word.capitalize!}

	pseudoname_rev = pseudoname_rev.join(' ')
	
	return pseudoname_rev
end

def createPseudoname(input)
	name = input
	new_name = changeName(name)
	puts name + ", is now: " + new_name
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
	createPseudoname(name)
end