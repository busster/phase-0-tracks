class TodoList
	def initialize(list_array)
		@list_array = list_array
	end

	def get_items(*index)
		master =  *index

		if !master.any?
			@list_array
		else
			@list_array[master[0]]
		end
			# dont need a new method called get_item because this will handle 
			# an argument if provided or just returnt he full array if not

	end

	def add_item(item)
		@list_array << item
	end

	def delete_item(item)
		@list_array = @list_array.delete_if { |i| i == item }
	end

	def get_item(index)
		@list_array[index]		
	end

end
