# Method to create a list
# input: carrots apples cereal pizza
# steps: 
  # declare an empty hash called grocery_list
  # split string by spaces into an array
  # iterate through array make each item a hash key
  # set default value to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: name, qty    oranges, 2
# steps: 
# 	check if name value is greater than or equal 1
		# if it is, add qty to original qty
# 	else if 
		# grocery_list[name.to_sym] = qty
# output: updated hash

# Method to remove an item from the list
# input: hash, item-to-delete
# steps: delete item from hash
# output: altered-hash

# Method to update the quantity of an item
# input: hash, item name, new qty
# steps: set new qty = to item name key
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and print key and value
# output: hash




def create_list(grocery_string)
	grocery_list = {}
	items = grocery_string.split
	items.each do |item|
		grocery_list[item] = 1
	end
	print(grocery_list)
end

def add_item(grocery_list, item, qty = 1)
	grocery_list[item] = (grocery_list[item] || 0) + qty
	return grocery_list
end

def delete_item (grocery_list, item)
	grocery_list.delete(item)
	return grocery_list
end

def update_quantity(grocery_list, item, qty)
	grocery_list[item] = qty
	return grocery_list
end

def print(grocery_list)
	grocery_list.each {|item, qty| puts "#{item}: #{qty}" }
end	


grocery_list = create_list("carrots apples cereal pizza")
p grocery_list = add_item(grocery_list, "apples")
p grocery_list = add_item(grocery_list, "oranges", 2)




p grocery_list =  delete_item(grocery_list, "apples")

p grocery_list =  update_quantity(grocery_list, "carrots", 6)

print(grocery_list)
 



 ### REFLECT

# - I have never pseudocoded that way with input, steps, output. 
# 	I actually really like this method though because it helps keep 
# 	track of what data types you are dealing with.
# - We used a hash for the main list of this challenge. It was a nice
# 	choice because we could keep key and value pairs neat
# 	If we were to use an array it would have looked mucky because 
# 	the key and values would not be related to eachother in any way.
# - the method reutrns the last value it operates or an explicit return
# 	if you declare one
# - we passed in a hash a string and an integer. really you can pass input
# 	any data type.
# - you can pass infromation between methods by either declaring local 
# 	variables or by updating a global variable.
# - I really appreciated daniel hleping us refactor our code. He went through
# 	some interesting concepts of truthy or falsey in regards to ruby.
# 	I found these very interesting and will consider them when writing code
# 	in the future as it will help keep if else statements to a minimum