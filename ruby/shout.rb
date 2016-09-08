module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!!!!" + " :D XD"
	end

	# we'll put some methods here soon, but this code is fine for now!
end

p Shout.yell_happily("Hi")
p Shout.yell_angrily("Go Away")