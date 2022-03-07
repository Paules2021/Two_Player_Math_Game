class Game 
  attr_accessor :player1, :player2, :current_player, :winner

  def initialize (player1, player2)
    self.player1 = player1
    self.player2 = player2
    self.current_player = [player1, player2].sample
  end

  def change_player 
    self.current_player = self.current_player == self.player1 ? self.player2 : self.player1
  end

  def life_status
    puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}/3"
  end

  def winner?
    if self.player1.lives > self.player2.lives
      self.winner = self.player1
    else
      self.winner = self.player2
    end
  end
  
end