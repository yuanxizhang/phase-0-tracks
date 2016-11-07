real_name = " "
arr_real = []
arr_new = []

def reverse_name(name)
	name_reversed = name.split(" ").reverse.join(" ")
	return name_reversed
end

def change_name(name)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

    new_alias = reverse_name(name.downcase)
	char_arr = new_alias.split('')
    new_arr = char_arr.map do |char| 
		if vowels.include?(char)
			vowels.rotate(1)[vowels.index(char)]

		elsif consonants.include?(char)
			consonants.rotate(1)[consonants.index(char)]

		else
			char
		end	 #if 	
    end #.map
    new_name = new_arr.join.split.map(&:capitalize).join(' ')
	return "#{name} is also known as #{new_name}!"
end #change_name

while real_name != "quit"
	print "Hi! Agent, please enter your real name (enter 'quit' to exit): "
	real_name = gets.chomp
	arr_real.push(real_name)
	arr_real.delete("quit")
end

arr_real.each do |name|
	arr_new.push(change_name(name))
end	

puts arr_new