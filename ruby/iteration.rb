#hash
new_h = {}
new_h[:name]="James Hash"
new_h[:address] = "1234 5th Ave, New York, NY 54321"
new_h[:email]="james_hash@gamil.com"
new_h[:phone]="212-123-1234"
new_h[:preferred_blue]="skyblue"
new_h[:wallpaper]=["Parsley", "Chevron"]
new_h[:ombre] = "Fierce"

#array
sites = ["New York", "Chicago", "Hong Kong", "San Francisco", "Sydney"]

puts "Original hash with applicant data:"
puts new_h

#iterate through hash with .each 
new_h.each do |label, value|
    puts "Applicant #{label} is #{value}."
end

puts "After .each loop:"
puts new_h


new_h.delete(:ombre)
puts "Hash after deleting ombre"
puts new_h

#original array
print "Original array:"
puts sites.inspect

#iterate through array with .each
sites.each do |city|
    puts "My favorite city to visit is #{city}!"
end

#new array 
puts "City array after .each iteration:"
puts sites.inspect


sites.delete_if {|city| city.length<8}
puts "City array after deleting items with length less than 8"
puts sites.inspect

#iterate through city array with .map! 
sites.map! do |city| 
    p "my favorite city to visit is #{city}!"
end
 
puts "City array after .map! iteration:"
puts sites.inspect