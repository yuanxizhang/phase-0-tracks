# declare a class called GuessMyWord
class GuessMyWord
  
  attr_accessor :letter_count
  attr_accessor :game_is_over
	
  # set the default value for the attributes
  def initialize   
    @letter_count = 0  
    @game_is_over = false
  end
  
  # check_word nethod will check if the word you guessed is correct
  # input: guessed string, the secret word
  # steps: if guessed string match the secret word, set game_is_over to true
  # output: return a boolean value, and dsplay a message when it returns true
  def check_word(str, word)
      if str == word
        puts "Congratulations! You guessed my word correctly!" 
        @game_is_over = true
      else
        false
      end	
  end
    
end

# user interface
# creat a new instance of class GuessMyWord
puts "Welcome to the Guess My Word game!"
game = GuessMyWord.new

# get the secret word from user one
puts "Please enter a word for the other player to guess: "
word = gets.chomp
guess = "_"*word.length
guess_arr = guess.split(//)


# ask user two to guess the secret word one letter at a time
# if the char appears once, use array index to update the char in guess array
# if the char appears more than once, loop through hash to update the char in guess array
while (game.letter_count < word.length) && (!game.game_is_over)
      puts "Please guess a letter that is in my word: "
      char = gets.chomp
      if word.include? char
          
          if word.count(char) == 1
              game.letter_count += 1
              guess_arr[word.index(char)] = char  
              puts "There is #{word.count(char)} #{char} in my word!"  
              puts guess_arr.join
          else
              word.split(//).each_with_index do |val, ind| 
                if val == char
                    guess_arr[ind] = char 
                    game.letter_count += 1
                end
              end
              puts "There are #{word.count(char)} #{char} in my word!"
              puts guess_arr.join
          end
      else
          puts "Sorry! There is no #{char} in my word!"     
      end
end

# call the instance method check_word to check if the guess matches the secret word
game.check_word(guess_arr.join, word)


 