require 'pry'

@player1 = {
  name: "Player 1",
  lives: 3,
  score: 0
}

@player2 = {
  name: "Player 2",
  lives: 3,
  score: 0
}


@current_player = @player1

def prompt_name
  puts "Player 1, what is your name?".yellow
  @player1[:name] = gets.chomp.capitalize
  puts "Player 2, what is your name?".yellow
  @player2[:name] = gets.chomp.capitalize
end


def turn_switch 
  if @current_player == @player1
    @current_player = @player2
  else
    @current_player = @player1
  end
end


def generate_question
  num1 = rand(1..10)
  num2 = rand(1..10)
  syms = [:+, :-, :*, :/]
  symbol = syms.sample
  if symbol == :/
    num3 = num1 * num2
    @answer = num1
    num1 = num3
  else
    @answer = num1.send(symbol, num2)
  end
  "#{@current_player[:name]}, what is #{num1} #{symbol} #{num2}?"
end


def prompt_player_for_answer
  @input = gets.chomp.to_i
end


def verfiy_answer?
  @answer == @input
end

def lose_life
  if @current_player == @player1
    @player1[:lives] -= 1
  else
    @player2[:lives] -=1
  end
end

def score
  if @current_player == @player1
    @player1[:score] += 1
  else
    @player2[:score] +=1
  end
end

def winner
  if @player1[:score]> @player2[:score]
    @winner = @player1[:name]
  else 
    @winner = @player2[:name]
  end
end










