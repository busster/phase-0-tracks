## GAME CLASS

class Hangman
	attr_accessor :guess_word, :secret_word, :letter_list, :guess_count, :game_over, :win

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_word = []
		@secret_word.each do
			@guess_word << '_'
		end
		@guess_count = 0
		@letter_list = []
		@game_over = false
		@win = false
	end


	def guess_letter(letter)
		if !@letter_list.include?(letter)
			@letter_list << letter
			

			if @secret_word.include?(letter)
				index = @secret_word.each_index.select{|i| @secret_word[i] == letter}
				index.each do |index|
					@guess_word[index] = @secret_word[index]
				end
			return @guess_word
			end
			@guess_count += 1
		end
		return @letter_list

	end

	def reveal_special_chars
		index = 0
		@secret_word.each do |char|
			if char =~ /[[:punct:]]|\s/
				@guess_word[index] = @secret_word[index]
			end
			index += 1
		end
		return guess_word
	end


	def stop_game
		if @guess_word == @secret_word
			@win = true
			@game_over = true
		elsif @guess_count == @secret_word.length
			@game_over = true
		else
			false
		end
	end

end



## DRIVER CODE

puts "Hangman.exe"
puts "---------------------------------------"
puts "The goal is to guess the secret word.\nYou have the same amount of guesses as the length of the word.\nHowever, duplicate or correct guesses will not count against you.\nAlso, special characters and spaces will be given to you."
puts "---------------------------------------"
puts "Enter a word to be guessed:"
secret_word = gets.chomp.downcase
secret_word = secret_word.split('')
game = Hangman.new(secret_word)
game.reveal_special_chars
while !game.game_over
	puts "Letters you've guessed so far: "+ game.letter_list.join(',')
	puts game.guess_word.join(' ')
	puts "Guesses remaining: " + (game.guess_word.length - game.guess_count).to_s
	print "Enter a letter to guess: "
	input = gets.chomp.downcase.strip
	game.guess_letter(input)
	game.stop_game
	print "\n"
end
if game.win == true
	puts "Congratulations! You guessed the word \"#{game.secret_word.join}\"!"
else
	puts "Sorry... You have run out of guesses. The word was \"#{game.secret_word.join}\". Better luck next time!"
end