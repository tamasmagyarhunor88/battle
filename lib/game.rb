class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    @players.each do |p|
      if p.next_to_attack == false
        p.receive_damage
        p.switch_next_to_attack
      elsif p.next_to_attack == true
        p.switch_next_to_attack
      end
    end
  end

end
