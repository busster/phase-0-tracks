require 'date'

def checkAge()
	date = Time.new
	month = date.month
	day = date.day
	year = date.year
	
	puts "How old are you: "
	while age = gets.chomp
		if age =~ /^+\d+$/
			age = age.to_i
			break
		else
			puts "Type your age in numbers (0-9) please."
		end
	end
	
	loop do
		puts "What is your birthday? (MM/DD/YYYY) "
		dob = gets.chomp
		break if dob =~ /[0-9][0-9]\/[0-9][0-9]\/[0-9][0-9][0-9][0-9]/
	end


end



def interview()
	checkAge()

	puts "What is your name: "
	name = gets.chomp
	puts "How old are you: "
	age = gets.chomp.to_i
	puts "What year were you born: "
	yob = gets.chomp
	
	loop do
		puts "Our company cafeteria serves garlic bread. Should we order some for you? "
		garlicbread = gets.downcase.chomp
		break if garlicbread == "yes" || garlicbread == "no"
	end

	if garlicbread == "yes"
			garlicbread = true
	elsif garlicbread == "no"
			garlicbread = false
	end

	loop do
		puts "Would you like to enroll in the company’s health insurance? "
		insurance = gets.downcase.chomp
		break if insurance == "yes" || insurance == "no"
	end

	if insurance == "yes"
			insurance = true
	elsif insurance == "no"
			insurance = false
	end
	


	
	
	

	

end


interview()