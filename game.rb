class Game

  attr_accessor :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_index = 0
    @current_player = @players[@current_index]


  end

  def switch_turn
    if @current_player == @players[0]
       @current_player = @players[1]
    else
      @current_player = @players[0]
    end

end




end