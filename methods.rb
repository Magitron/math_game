# require 'pry'



@player1_lives = 3
@player2_lives = 3

@player1_score = 0
@player2_score = 0

# @winner = " "




def prompt_name
  puts "Player 1, what is your name?"
  @player1 = gets.chomp
  puts "Player 2, what is your name?"
  @player2 = gets.chomp
end

# @current_player = @player2

# def turn_switch 
#   if @current_player == @player1
#     @current_player = @player2
#   else
#     @current_player = @player1
#   end
# end


def generate_question
  num1 = rand(1..10)
  num2 = rand(1..10)
  @answer = num1 + num2
  "#{@current_player}, what is #{num1} + #{num2}?"
end


def prompt_player_for_answer
  @input = gets.chomp.to_i
end


def verfiy_answer?
  @answer == @input
end

def lose_life
  if @current_player == @player1
    @player1_lives -= 1
  else
    @player2_lives -=1
  end
end

def score
  if @current_player == @player1
    @player1_score += 1
  else
    @player2_score +=1
  end
end

def winner
  if @player1_score > @player2_score
    @winner = @player1
  else 
    @winner = @player3
  end
end










