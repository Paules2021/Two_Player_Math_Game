class Questions
  attr_accessor :number1, :number2, :answer
  
  def initialize
    self.number1 = rand(1..20)
    self.number2 = rand(1..20)
    self.answer = self.number1 + self.number2
  end

  def read_question(player_name) 
    puts "#{player_name} what does #{self.number1} + #{self.number2} equal to?"
  end

  def check_answer(answer)
    self.answer == answer
  end

end