arr = [42, 89, 23, 1]

def search_array(array, int)
	in_array = false
	index = 0

	# if array.map {|num| int == num}
	# 	return index
	# else
	# 	return nil
	# end

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

p search_array(arr, 10)