class Player

  DEFAULT_HP = 100
  attr_reader :name , :hp, :next_to_attack

  def initialize(name, hp = DEFAULT_HP, next_to_attack = true )
    @name = name
    @hp = hp
    @next_to_attack = next_to_attack
  end

  def receive_damage
    @hp -= 10
  end

  def switch_next_to_attack
    @next_to_attack = !@next_to_attack
  end

end
