





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
			print "Please format like this: MM/DD/YYYY: "
		end
	end
	return age, dob
end

def yes_no()
	while variable = gets.downcase.chomp
		if variable == "yes"
			variable = true
			break
		elsif variable == "no"
			variable = false
			break
		else 
			print "yes/no: "
		end
	end
	return variable
end

def checkName()
	puts "What is your name? "
	name = gets.chomp

	if name == "Drake Cula" || name == "Tu Fang"
		check_name = false
	else
		check_name = true
	end
end





# DRIVER CODE

check_name = checkName()

birthday_check = checkAge(date_of_birth())

puts "Our company cafeteria serves garlic bread. Should we order some for you? "
garlicbread_check = yes_no()

puts "Would you like to enroll in the company’s health insurance? "
insurance_check = yes_no()


if check_name == false
	results = "Definitely a vampire."
elsif birthday_check == false
	if garlicbread_check == false && insurance_check == false
		results = "Almost certainly a vampire."
	elsif garlicbread_check == false || insurance_check == false
		results = "Probably a vampire."
	end
elsif birthday_check == true && (garlicbread_check == true || insurance_check == true)
	results = "Probably not a vampire."
else
	results = "Results inconclusive."
end

puts results
		
	










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