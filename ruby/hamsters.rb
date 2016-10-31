print "What is the name of the hamster? "
hamster_name = gets.chomp
print "What is the voice volume level of the hamster? (1 to 10, 10 is highest) "
voice_volume = gets.chomp.to_i
print "What is the fur color of the hamster? "
fur_color = gets.chomp
print "Is the hamster a good candidate for adoption? (y/n) "
good_to_adopt = gets.chomp
if good_to_adopt == "y" || good_to_adopt == "Y" || good_to_adopt == "yes" 
	adopt = true
else	
	adopt = false
end	
print "What is the estinated age of the hamster?"
age = gets.chomp.to_i
if age == 0
	age = nil
end

puts "Hamster name: #{hamster_name}"
puts "Hanster voice volume: #{voice_volume}"
puts "Hamster fur color: #{fur_color}"
puts "Hanster is good to adopt: #{adopt}"
puts "Hamster's estimated age: #{age}"