print "how many employees will be processed? "
n = gets.chomp.to_i
i = 0
while i < n 

	print "What is your name? "
	name2 = gets.chomp

	print "How old are you? "
	age = gets.chomp.to_i

	print "What year were you born? "
	year_of_birth = gets.chomp.to_i
	real_age = Time.new.year - year_of_birth

	print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n) "
	garlic = gets.chomp

	print "Would you like to enroll in the company’s health insurance? (y/n) "
	insure =gets.chomp

	m = " "

	if name2 == "Drake Cula" || name2 == "Tu Fang"
		m = "Definitely a vampire. "	
	elsif age!=real_age && garlic=="n" && insure=="n"
		m = "Almost certainly a vampire."	
	elsif age!=real_age && (garlic=="n" || insure=="n")
		m = "Probably a vampire."
	elsif age == real_age && (garlic=="y" || insure=="y")
		m = "Probably not a vampire."	
	else
		m = "Results inconclusive"	
	end	

    print "What kind of allergies do you have? "
    allergy = gets.chomp
    
    until allergy == "sunshine"
    	print "What other allergies do you have? "
    	allergy = gets.chomp
    end

    if  allergy == "sunshine"
    	m = "Probably a vampire."
    end

	puts "Name: #{name2}"
	puts "Age: #{age}"
	puts "Year were you born: #{year_of_birth}"
	puts "Garlic bread for you?  #{garlic}"
	puts "Enroll in the company’s health insurance?  #{insure}"
	puts "Allergy: #{allergy}"
	puts "Conclusion: #{m}"

	puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	i += 1
end	