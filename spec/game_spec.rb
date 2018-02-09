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
    allow(hunor).to receive(:switch_next_to_attack)
    allow(hannah).to receive(:switch_next_to_attack)
    expect(hunor).to receive(:receive_damage)
    game.attack(hunor)
  end

  it "player 1 switches next_to_attack status after they attack" do
    allow(hunor).to receive(:receive_damage)
    allow(hunor).to receive(:switch_next_to_attack)
    expect(hannah).to receive(:switch_next_to_attack)
    game.attack(hunor)
  end

  it "player 2 switches next_to_attack status after they attack" do
    allow(hannah).to receive(:receive_damage)
    allow(hannah).to receive(:switch_next_to_attack)
    expect(hunor).to receive(:switch_next_to_attack)
    game.attack(hannah)
  end

end
