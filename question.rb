class Question
  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = number1 + number2
  end

  def display_question
    "What is #{number1} + #{number2}?"
  end

  def check_answer(user_answer)
    user_answer == answer
  end

end