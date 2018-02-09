require 'player'

describe Player do
  subject(:hannah) { described_class.new('Hannah') }
  subject(:hunor) { described_class.new('Hunor', 100, false ) }

  it "has name" do
    expect(hunor.name).to eq('Hunor')
  end

  it "has 100 hp" do
    expect(hunor.hp).to eq described_class::DEFAULT_HP
  end

  it "decreases hp when receives attack" do
    expect{ hunor.receive_damage }.to change{ hunor.hp }.by -10
  end

  it "player 1 instantiates with next_to_attack as true" do
    expect(hannah.next_to_attack).to be true
  end

  it "player 2 instantiates with next_to_attack as false" do
    expect(hunor.next_to_attack).to be false
  end

  it "switches next_to_attack to true when player receives damage" do
    hunor.receive_damage
    expect(hunor.next_to_attack).to be true
  end

end
