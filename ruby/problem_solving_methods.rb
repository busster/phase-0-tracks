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