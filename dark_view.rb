require 'pp'
require 'CSV'

#require_relative 'high_scores.csv'

class DarkView
  def initialize
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
    answer=gets.chomp
    #can return the answer if needs be
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

#-------HERE IS A NICE LITTLE START UP DEMO ----------#
print "\e[H"
puts "commencing screen test for curser, please wait"
sleep 0.6
print "\e[H\e[2J"
print "\e[H"
puts".."
sleep 0.2
print "\e[H"
puts"...."
sleep 0.2
print "\e[H"
puts"......"
sleep 0.2
print "\e[H"
puts"........"
sleep 0.2
print "\e[H"
puts"..........."
sleep 0.2
print "\e[H\e[2J"
DarkView.new.score([1,2,3,4,5])
sleep 0.6
DarkView.new.score([0,9,8,7,6])
sleep 0.6
DarkView.new.score([10,20,30,40,50])
sleep 0.6
DarkView.new.score([100,90,80,70,60])
sleep 0.6
print "\e[H\e[2J"
DarkView.new.start
DarkView.new.question('Is this a question???')
sleep 0.5
DarkView.new.correct
sleep 0.5
DarkView.new.incorrect("this is a question")
sleep 0.5
DarkView.new.high_scores('high_scores.csv')
