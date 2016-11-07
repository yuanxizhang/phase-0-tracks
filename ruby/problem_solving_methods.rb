# search an integer from an interger array
def find_int(arr, i)
	count = 0
	if arr.include?i 
	
		arr.each do |item|		
			break if item == i	
			count += 1
		end
		p count
	else
		p nil
	end	
end


arr = [42, 89, 23, 1]
find_int(arr, 1)
find_int(arr, 24)

#Fibonacci
def fib(n)
	arr = Array.new(n)
	
	if n == 1 
		arr.push(0)
			
	elsif n == 2
		arr.push(0)
		arr.push(1)
			
	else
		arr = [0, 1]
		i = 3
		while i <= n
			x = arr[i - 2]  
			y = arr[i - 3]
			sum = x+y
			arr.push(sum)
			i = i + 1
		end
			
	end
	arr
end

puts fib(12).inspect
puts fib(10).inspect

#define bubble_sort method using array
def bubble_sort(array)
	#find the length of the array  
 	n = array.length
	# set up a loop that will compare the elements of the array 
 	loop do 
		#set a boolean variable to "false" to declare that the swap has not been done
   		swapped = false
		#compare array.length -1 times 
		(n-1).times do |i|
		#set a conditional statement that declares that if the first element is larger than the second element, swap the position of the larger element with the other element 
     		if array[i] > array[i+1]
       			array[i], array[i+1] = array[i+1], array[i]
				#set boolean "swapped" as true when the swap is complete
       			swapped = true
     		end #if 
		end # n-1.times

 		break if not swapped #end loop if there are no more array elements to compare and swap 
 	end #do loop  

 	p array #return sorted array 
end #bubble_sort function

bubble_sort(['x', 'c', 'v', 'b' ,'n'])  
bubble_sort([42, 89, 23, 1])