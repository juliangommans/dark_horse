require 'pp'
require 'CSV'
#require_relative 'dark_controller'
#require_relative 'dark_model'
#require_relative 'high_scores.csv'

class DarkView
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

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

    puts CSV.read('high_scores.csv')
  end
end

x = DarkView.new("what's this?", "It's an answer")

x.start
x.question('who are you?')
x.correct
x.incorrect("this is a question")
x.high_scores('high_scores.csv')
#x.score([1,2,3,4,5])
sleep 0.5
#x.score([0,9,8,7,6])
sleep 0.5
#x.score([1,2,3,4,5])
sleep 0.5
#x.score([0,9,8,7,6])
sleep 0.5
