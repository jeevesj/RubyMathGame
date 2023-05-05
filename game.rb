class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def switch_turns
    @current_player = (@current_player == @player1) ? @player2 : @player1
    puts "--- NEW TURN ---"
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      puts "#{@current_player.name}: #{question.display_question}"
      user_answer = gets.chomp.to_i

      if question.check_answer(user_answer)
        puts "Correct!"
      else
        puts "Incorrect!"
        @current_player.lose_life
      end

      if @player1.lives > 0 && @player2.lives > 0
        puts "Score: #{@player1.name}: #{@player1.lives}, #{@player2.name}: #{@player2.lives}"
        switch_turns
      else
        puts "#{@current_player.name} loses! GAMEOVER"
      end
    end
  end
end