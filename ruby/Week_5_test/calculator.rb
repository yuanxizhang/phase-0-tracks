def calculate(x, op, y)
		if op == "+"
			x+y
		elsif op == "-"
			x-y
		elsif op == "*"
			x*y
		elsif op == "/"
			x/y	
		elsif op == "**"
			x**y
		elsif op == "%"
			x%y
		else
			"Please enter a valid operator!"
		end			
end

# puts calculate(2, "+", 8)
# puts calculate(10, "-", 1) 
# puts calculate(2, "*", 8)
# puts calculate(10, "/", 2)
# puts calculate(5, "**", 2)
# puts calculate(15, "%", 2)
arr = []
arr_o = []
str = " "
count = 0

while str != "done"
	print "Please enter your operation: (enter 'done' to exit) "
	str = gets.chomp

	break if str == "done"
	arr = str.split
	
	a = arr[0].to_i
	o = arr[1]
	b = arr[2].to_i
	count += 1
	answer = calculate(a, o, b)
	arr_o.push("#{str}" + " = " + "#{answer}")
	puts answer
end

puts "#{count} calculations performed: "
puts arr_o
