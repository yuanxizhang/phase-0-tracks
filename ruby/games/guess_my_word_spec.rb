require_relative 'GuessMyWord'

describe GuessMyWord do
  let(:game) { GuessMyWord.new }

  it "check if the word you guessed is correct" do
    expect(game.check_word("stone", "stone")).to eq true
  end

  
end