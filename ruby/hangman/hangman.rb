class Hangman
	attr_accessor :guess_word, :guessed_letters

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_word = []
		@secret_word.each do
			@guess_word << '_'
		end
		@guess_count = 0
		@guessed_letters = []
		@game_over = false
	end


	def guess_letter(letter)
		@guess_count += 1
		
		if @secret_word.include?(letter)
			index = @secret_word.index(letter)
			@guess_word[index] = @secret_word[index]
			return @guess_word
		end
		@guessed_letters << letter

	end

	def check_word(guess_word, secret_word)
		if @guess_word == @secret_word
			@game_over = true
		else
			false
		end
	end


end





test = "test".split('')

game = Hangman.new(test)

game.guess_letter("t")

p game.guess_word
p game.guessed_letters




# puts "Hangman.exe"
# game = Hangman.new(secret_word)

# puts "Enter a word to be guessed"
# secret_word = gets.chomp