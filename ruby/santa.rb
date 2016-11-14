class Santa
	attr_accessor  :age, :ethnicity
	attr_accessor :gender, :reindeer_ranking

	def initialize(gender, ethnicity)
		
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak 
		puts  "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}" 
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
		return @reindeer_ranking 
	end
	
end

santas = []
arr_genders = ["agender", "female", "male", "gender fluid", "transgender"]
arr_ethnicities = ["black", "Latino", "white", "Japanese-American", "native American", "Mystical Creature (unicorn)", "Indian American"]
arr_genders.length.times do |i|
  santas << Santa.new(arr_genders.sample, arr_ethnicities.sample)
end

santas.each do |st|
	puts "Ranking: #{st.reindeer_ranking}"
	rand(1..140).times{st.celebrate_birthday}
	puts "Age: #{st.age}"
	puts "Ethinicity: #{st.ethnicity}"
	puts "Gender: #{st.gender}"
	puts "-"*100
end
