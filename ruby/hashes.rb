# Make an empty hash to store the client infomation
client = {}

#Ask questions and store the answers in each item of the hash
print "What is the name of the client? "
client[:name] = gets.chomp
print "What is the age of the client? "
client[:age] = gets.chomp.to_i
print "What is the email address of the client? "
client[:email] = gets.chomp
print "How many children does the client have? "
client[:kids] = gets.chomp.to_i
print "What is the preferred deco theme of the client? "
client[:theme] = gets.chomp
print "Does the client like shutters for the window? (y/n) "
client[:shutter] = gets.chomp
if client[:shutter].downcase=='y' || client[:shutter].downcase=='yes'
	client[:shutter]=true
elsif client[:shutter].downcase=='n' || client[:shutter].downcase=='no'
	client[:shutter]=false
else 
	puts "Please enter y or n."	
end
#show the client information that was enterred
puts client

#Ask if there is any changes to be made, store the answer in a variable 
print "Do you need to make any changes? (y/n)"
change = gets.chomp

#check the answer, if y, ask which item need change, and new value for the item
if change.downcase == 'y' || change.downcase == 'yes'
	change = true
	print "Which item do you need change? "
	item = gets.chomp.to_sym
	print "Please enter a new value for #{item}:  "
	value =gets.chomp
	#update the value of the item 
	client[item] = value
	puts "The #{item} has been updated to #{value}"
elsif change.downcase == 'n' || change.downcase == 'none' || change.downcase == 'no'
	change = false
	puts "The client data entry is complete!"
else
	puts "Please enter y or n."
end

