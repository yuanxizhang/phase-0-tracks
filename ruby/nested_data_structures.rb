music_teacher = {
	:name => "Jim Star",
	:phone => "510-123-1234",
	:email => "jim@gmail.com",
	:teach => ["clarinet", "flute", "tuba", "trunpet"],
	:days_available => ["Monday", "Tuesday", "Wednesday"],
	:students => 	[{:s_name =>"Adam Smith", :instrument => "flute"},
					 {:s_name =>"George Hunter", :instrument => "clarinet"}, 
					 {:s_name => "John Teeter", :instrument => "trumpet"}]

}

puts music_teacher[:name] + " teaches " + music_teacher[:students][2][:s_name]+ " how to play " + music_teacher[:teach][3] + " on " + music_teacher[:days_available][2] + "."
