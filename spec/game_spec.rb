require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:hunor) { double('hunor') }
  let(:justyna) { double('justyna') }

  it "attacks second player" do
    expect(justyna).to receive(:receive_damage)
    game.attack(justyna)
  end
end
