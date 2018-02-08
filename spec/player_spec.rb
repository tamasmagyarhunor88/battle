require 'player'

describe Player do
  subject(:hunor) { described_class.new('Hunor') }
  subject(:justyna) { described_class.new('Justyna') }

  it "has name" do
    expect(justyna.name).to eq ('Justyna')
  end

  it "has 100 hp" do
    expect(hunor.hp).to eq described_class::DEFAULT_HP
  end

  it "decreases hp when receives attack" do
    expect{ hunor.receive_damage }.to change{ hunor.hp }.by -10
  end

end
