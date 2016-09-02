# def greeting(name)
# 	yield
# 	puts name
# end

# greeting("Jason") {puts "Hello!"}

# def greeting1
# 	puts "Hello"
# 	yield("Jack")
# end

# greeting1 { |name| puts "How has your day been #{name}"}


# array1 = (1..20).to_a
# hash1 = {apples: 1, bananas: 3, bread: 1, oranges: 5,}

# array1.each do |num|
# 	puts num
# end

# array1.map! do |num|
# 	puts num + 1
# end

# hash1.each do |item, quantity|
# 	puts "You have #{quantity} #{item}"
# end

# names = ["Jay", "Aaron", "Zack", "Mary"]
# p names.sort


# p hash1.delete_if {|item, quantity| item == :apples}

# p array1.delete_if {|num| num > 15 }


array2 = (50..100).to_a

# p array2.keep_if {|num| num > 75}


hash2 = {Tom_Cruise: "action", John_Jacobs: "drama", Mary: "drama"}
# p hash2.keep_if {|name, genre| genre == "drama"}

# p array2.take_while {|num| num < 60}

# p hash2.select {|name, genre| genre == "drama"}


