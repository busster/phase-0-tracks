class Santa
	attr_accessor :gender, :age
	attr_reader :ethnicity

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
	end


end

# test_santa = Santa.new()
# test_santa.eat_milk_and_cookies("oreo")

# santas = []

# gender_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 10.times do |i|
# 	santas << Santa.new(gender_list[i], ethnicities_list[i])
# end

# p santas[0].get_mad_at("Prancer")
# p santas[0].age
# p santas[0].celebrate_birthday
# p santas[0].gender = "tree"
# p santas[0].ethnicity



santas = []

gender_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



100.times do |i|
	santas << Santa.new(gender_list.sample, ethnicities_list.sample)
end

santas.length.times do |i|
	santas[i].age = rand(0..140)
end

santas.length.times do |i|
	santa = santas[i]
	puts "Santa #{i + 1} is #{santa.age} years old. They are #{santa.gender}, and #{santa.ethnicity}."
end


