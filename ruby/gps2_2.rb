# create a grocery list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Add each food item to the hash called grocery list by seperating items with Array#split method
  # set default quantity for each item to 1
  # print the list to the console (call the print_list method)
  # output: a hash called grocery list
def create_list
	grocery_list = {}
	print "Please enter the items you need to buy seperated by spaces(example: 'carrots apples cereal'):  "
	arr_food = gets.chomp.split
	arr_food.each do |item|
		grocery_list[item] = 1
	end
	print_list(grocery_list)
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: add a key value pair(item and count) to the hash of grocery 
# output: updated grocery list with new item added
def add_item(glist, item, count=1)
	glist[item] = 1
	return glist
end

# Method to remove an item from the list
# input: a hash of grocery list, a grocery item to be removed
# steps: use Hask#delete(key) method to delete one item
# output: an updated hash of grocery list
def delete_item(glist, item)
	glist.delete(item)
	return glist
end

# Method to update the quantity of an item
# input: a hash of grocery list, an item, a new quantity(count)
# steps: assign a new value to the hash item based on key
# output: an updated grocery list
def update_count(glist, item, count)
	glist[item] = count
	return glist
end

# Method to print a list and make it look pretty
# input: a hash of grocery list of items and quantites.
# steps: use .each method to ierated through the hash
# output: retuen nil, diaplay the grocery list on the screen
def print_list(glist)
	puts "Grocery Shopping list"
	glist.each do |item, count|
		puts "#{item}: ".ljust(20) + " #{count}".rjust(20)
	end
end

weekly_grocery = create_list
add_item(weekly_grocery, "pizza")
delete_item(weekly_grocery, "peas")
update_count(weekly_grocery, "potatoes", 5)
print_list(weekly_grocery)