
class Karate

	def round_house
		puts "#{@name} *round house*"
	end
	def upper_cut
		puts "#{@name} *upper cut*"
	end
	def initialize(name)
		@name = name
	end
end

name_list = ["Chuck Norris", "Zina Goucher", "Sharron Hirata", "Kourtney Shuey", "Carmelo Mallet", "Bruce Lee", "Bryant Cosgrove", "Manuel Fillers", "Booker Yearout", "Maya Cully"]

karate_students = []

50.times do
	karate_students << Karate.new(name_list.sample)
end
karate_students.each do |student|
	student.round_house
	student.upper_cut
	
end