# - initialize a hash with keys and empty values
# - ask user questions for answers 
# 	- get user information
# 		- name
# 		- age
# 		- # of children
# 		- decor theme
# 		- favorite color
# 		- interested in multiple palettes
# 		- would like products from only one vedor
# 	- convert to appropriate data type
# 	- write to value of hash key
# 	- print values of hash
# 	- allow fo an update of a key
# 		- none means skip
# 		- key value
# 			- ask for new value
# 			- update existing value to new
# - print hash



client = {
	first_name: nil,
	last_name: nil,
	age: nil,
	num_children: nil,
	decor_theme: nil,
	favorite_color: nil,
	multiple_palettes: nil,
	single_vendor: nil,
}


puts "What is the client's first name?"
first_name = gets.chomp
client[:first_name] = first_name

puts "What is the client's last name?"
last_name = gets.chomp
client[:last_name] = last_name

puts "What is the client's age?"
age = gets.to_i
client[:age] = age

puts "How many children does the client have?"
num_children = gets.to_i
client[:num_children] = num_children

puts "What is the decor theme?"
decor_theme = gets.chomp
client[:decor_theme] = decor_theme

puts "What is the client's favorite color?"
favorite_color = gets.chomp
client[:favorite_color] = favorite_color

puts "Would the client like multiple color palettes?"
multiple_palettes = gets.downcase.chomp
if multiple_palettes == "yes"
	multiple_palettes = true
elsif multiple_palettes == "no"
	multiple_palettes = false
else
	multiple_palettes = nil
end
client[:multiple_palettes] = multiple_palettes

puts "Would the client like products from a single vendor?"
single_vendor = gets.downcase.chomp
if single_vendor == "yes"
	single_vendor = true
elsif single_vendor == "no"
	single_vendor = false
else
	single_vendor = nil
end
client[:single_vendor] = single_vendor


p client

puts "Would you like to change a value of a key? Type the key you wish to change, or type 'none' to quit."
update = gets.chomp.to_sym
if client.key?(update)
	puts "what is the new value?"
	if update == :first_name || update == :last_name || update == :decor_theme || update == :favorite_color
		value = gets.chomp
		client[update] = value
	elsif update == :age || update == :num_children
		value = gets.to_i
		client[update] = value	
	elsif update == :multiple_palettes || update == :single_vendor
		value = gets.downcase.chomp
		if value == "yes"
			value = true
		elsif value == "no"
			value= false
		else
			value = nil
		end
		client[update] = value		
	end
elsif update == :none
end

p client

abort("See ya.")
