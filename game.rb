require './player' 
require './questions' 
require './user_input' 

class Game 
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @players = [@player1, @player2]
  end

  def switch_player
    @current_player = @players.find { |player| player != @current_player }
  end

  def start
    puts "Welcome to the Math Game!"

    while @players.all?{|player| player.alive?}
      play_turn
      switch_player
      puts "-----NEW TURN-----"
    end

    winner = @players.find{|player| player.alive?}
    puts "#{winner.name} wins with a score of #{winner.hp}/3 !"
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end

  def play_turn 
    question = Questions.new
    num1 = question.num1
    num2 = question.num2
    result = num1 + num2

    User_input.get_input(num1, num2, @current_player.name).tap do |player_answer|
      if player_answer == result
        puts "#{@current_player.name}: Yes! You are correct."
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lose_hp
      end
      puts "P1: #{@player1.hp}/3 VS P2: #{@player2.hp}/3"
    end
  end
end

