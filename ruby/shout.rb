# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!!!!" + " :D XD"
# 	end

# 	# we'll put some methods here soon, but this code is fine for now!
# end

# p Shout.yell_happily("Hi")
# p Shout.yell_angrily("Go Away")


module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :(\n-#{@name}"
	end
	def yell_happily(words)
		puts words + "!!!!!!" + " :D XD\n-#{@name}"
	end
end

class Person
	include Shout
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

class Knight
	include Shout
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

person = Person.new("John")
person.yell_happily("Hey friend")

knight = Knight.new("King Arthur")
knight.yell_angrily("I asked for a round table")