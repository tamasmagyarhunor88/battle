require 'game'

describe Game do
  subject(:game) { described_class.new(hannah, hunor) }
  let(:hannah) { double('hannah') }
  let(:hunor) { double('hunor') }

  it "retrieves the first player" do
    expect(game.player1).to eq hannah
  end

  it "retrieves the second player" do
    expect(game.player2).to eq hunor
  end

  it "attacks second player" do
    expect(hunor).to receive(:receive_damage)
    game.attack(hunor)
  end
end
