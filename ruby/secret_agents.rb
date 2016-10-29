
def encrypt(str)
	i = 0 
	str2 = ""
    while i < str.length
		if str[i] == 'z'
			str[i] = [96].pack('U')
		else	
        	str2 = str2 +(str[i].ord + 1).chr
			i += 1
		end	
    end	
    str2
end     

def decrypt(str)
	i = 0 	
	str2 = ""
    while i < str.length
		if str[i] == 'a'
			str[i] = [123].pack('U')
		else	
        	str2 = str2 + (str[i].ord - 1).chr
			i += 1
		end	
    end	
    str2
end     

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#It works because both functions return a string
#puts decrypt(encrypt("swordfish"))

print "Would you like to encrypt or decrypt a password? (e/d) "
choice = gets.chomp
print "What is your password? "
password = gets.chomp

if choice == 'e'
	puts encrypt(password)	
elsif choice == 'd'	
	puts decrypt(password)
else
	puts "Please enter 'd' for decrypt or 'e' for encrypt."	
end	
