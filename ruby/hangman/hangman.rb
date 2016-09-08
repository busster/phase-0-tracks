class Hangman
	attr_accessor :guess_word, :letter_list, :guess_count, :game_over

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_word = []
		@secret_word.each do
			@guess_word << '_'
		end
		@guess_count = 0
		@letter_list = []
		@game_over = false
	end


	def guess_letter(letter)
		@guess_count += 1
		@letter_list << letter
		if @secret_word.include?(letter)
			index = @secret_word.each_index.select{|i| @secret_word[i] == letter}
			index.each do |index|
				@guess_word[index] = @secret_word[index]
			end
			return @guess_word
		end
		return @letter_list

	end


	def stop_game
		if @guess_word == @secret_word
			@game_over = true
		elsif @guess_count == @secret_word.length
			@game_over = true
		else
			false
		end
	end

end





word = "test".split('')


game = Hangman.new(word)

while !game.game_over
	
	input = gets.chomp
	game.guess_letter(input)
	
	p game.guess_count
	p length
	p game.guess_word
	p game.letter_list
	game.stop_game
end

# game.guess_letter("t")

# p game.guess_word
# p game.guessed_letters




# puts "Hangman.exe"
# game = Hangman.new(secret_word)

# puts "Enter a word to be guessed"
# secret_word = gets.chomp