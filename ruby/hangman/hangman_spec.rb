require_relative 'hangman'

describe Hangman do
  let(:game) { Hangman.new(["t","e","s","t"]) }

  it "change guessed letter if correct" do
    expect(game.guess_letter("t")).to eq ["t", "_", "_", "t"]
  end

  it "adds letter to guessed letters if guess is not in array" do
    expect(game.guess_letter("b")).to eq ["b"]
  end


end