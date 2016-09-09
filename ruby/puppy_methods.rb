class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(times)
  	puts "Woof!" * times
  end

  def roll_over
  	puts "*rolls over*"
  end
  def dog_years(human_years)
  	dog_years = human_years * 7
  end
  def play_dead
  	puts "*plays dead*"
  end
  
  def initialize
  	puts "Initializing new puppy instance..."
  end
end
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(2)
puppy.play_dead


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
50.times do |i|
	karate_students << Karate.new(name_list.sample)
end
karate_students.each do |student|
	student.round_house
	student.upper_cut
	
end