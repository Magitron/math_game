require_relative './methods.rb'
require 'colorize'

# def math_game


def game
  prompt_name

  loop do
    puts generate_question.light_blue
    prompt_player_for_answer
    if verfiy_answer?
      score
      puts "Correct!\n ".green
    else
      lose_life
      puts "Wap wap waaaaappp!\n ".red
      # puts "Current score:\n  Player 1: #{@player1_score}\n  Player 2: #{@player2_score}."
      puts "Current lives:\n  Player 1: #{@player1[:lives]}\n  Player 2: #{@player2[:lives]}.\n ".yellow
    end
    turn_switch
    break if @player1[:lives] == 0 || @player2[:lives] == 0
  end
  winner
  system "cowsay 'Game over'"
  puts " "
  puts "The winner is #{@winner}!\n Score:\n  Player 1: #{@player1[:score]}\n  Player 2: #{@player2[:score]}".light_magenta
end

game


