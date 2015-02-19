require 'pp'
require 'CSV'

#require_relative 'high_scores.csv'

class DarkView
  #driver code ref for jay, ignore
  # def initialize(question, answer)
  #   @question = question
  #   @answer = answer
  # end

  def start
  puts "Welcome Player 1, please enter your name"
  p1_name=gets.chomp
  puts "Welcome Player 2, please enter your name"
  p2_name=gets.chomp

  #heres where we return this to the controller
  #CallMethod.do(p1_name, p2_name)
  end

  def score(score_array)
    print "\e[H"
    puts score_array
  end

  def question(question)
    puts "Your next question is: #{question}"
  end

  def correct
    puts "Well done, that is correct!"

  end

  def incorrect(answer)
    puts "Sorry, your answer was incorrect"
    puts "The correct answer is: #{answer}"
  end


  def high_scores(file)
  File.foreach(file) { |row|
    puts row}
  end
end




