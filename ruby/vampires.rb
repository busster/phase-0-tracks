require 'date'


# METHODS

def checkAge(age_dob)
	age, dob = age_dob
	birthday_check = nil

	dob_month = dob[0].to_i
	dob_day = dob[1].to_i
	dob_year = dob[2].to_i

	date = Time.new
	month = date.month
	day = date.day
	year = date.year

	if dob_year > year
		birthday_check = false		
	end

	if dob_month > month
		birthday = -1
	elsif dob_month == month
		if dob_day > day
			birthday = -1
		else
			birthday = 0
		end
	else
		birthday = 0
	end

	age_check = year - dob_year + birthday
	if age == age_check
		birthday_check = true
	else
		birthday_check = false
	end
	return birthday_check
end


def date_of_birth()
	puts "How old are you: "
	while age = gets.chomp
		if age =~ /^+\d+$/
			age = age.to_i
			break
		else
			puts "Type your age in numbers (0-9) please."
		end
	end

	puts "What is your date of birth? (MM/DD/YYYY)"
	while dob = gets.chomp
		if dob =~ /[0-9][0-9]\/[0-9][0-9]\/[0-9][0-9][0-9][0-9]/
			dob = dob.split "/"
			break
		else
			puts "Please format like this: MM/DD/YYYY"
		end
	end
	return age, dob
end




# DRIVER CODE

checkAge(date_of_birth())

# a = date_of_birth()
# a = a.join ""
# puts a



# def interview()
# 	date_of_birth()

# 	puts "What is your name: "
# 	name = gets.chomp
# 	puts "How old are you: "
# 	age = gets.chomp.to_i
# 	puts "What year were you born: "
# 	yob = gets.chomp
	
# 	loop do
# 		puts "Our company cafeteria serves garlic bread. Should we order some for you? "
# 		garlicbread = gets.downcase.chomp
# 		break if garlicbread == "yes" || garlicbread == "no"
# 	end

# 	if garlicbread == "yes"
# 			garlicbread = true
# 	elsif garlicbread == "no"
# 			garlicbread = false
# 	end

# 	loop do
# 		puts "Would you like to enroll in the company’s health insurance? "
# 		insurance = gets.downcase.chomp
# 		break if insurance == "yes" || insurance == "no"
# 	end

# 	if insurance == "yes"
# 			insurance = true
# 	elsif insurance == "no"
# 			insurance = false
# 	end
	


	
	
	

	

# end


# interview()