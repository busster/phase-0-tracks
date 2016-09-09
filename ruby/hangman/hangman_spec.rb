require_relative 'hangman'

describe Hangman do
  let(:game) { Hangman.new(["t","e","s","t"]) }

  it "change guessed letter if correct" do
    expect(game.guess_letter("t")).to eq ["t", "_", "_", "t"]
  end

  it "adds letter to guessed letters if guess is not in array" do
    expect(game.guess_letter("b")).to eq ["b"]
  end

  it "ends game when the guessed word == the secret word" do
    test = ["t","e","s"]
    test.each do |letter|
      game.guess_letter(letter)
    end
    expect(game.stop_game).to eq true
  end

  it "ends game when the guess count gets too high" do
    test = ["t","e","b","j","k","p"]
    test.each do |letter|
      game.guess_letter(letter)
    end
    expect(game.stop_game).to eq true
  end

  it "adds special characters and spaces to the displayed word if there are any" do
    game = Hangman.new([","," ",".","a"])
    expect(game.reveal_special_chars).to eq [",", " ", ".", "_"]
  end

end