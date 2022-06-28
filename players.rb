class Player
  attr_accessor :player_lives, :player_id

  def initialize(player_id)
    @player_id = player_id
    @player_lives = 3

  end

  def lose_life
    @player_lives -= 1
  end

  def player_score

  end

end
