require 'pp'
require 'CSV'

#require_relative 'high_scores.csv'

class DarkView
  def initialize
  end

  def start
    2.times do |player|
      puts "Welcome Player #{player+1}, please enter your name"
    end
  end

  def score(p1,p2,s1,s2)
    track1=[" "," "," "," "," "]
    track2=[" "," "," "," "," "]
      if s1!=0
        track1.insert(s1-1, 'X')
      end

      if s1!=0
        track2.insert(s2-1,'X')
      end
      print "\e[H\e[2J"
      print "\e[H"
      print
        track1.each {|x| print x, " | " }
        puts p1
      print
        track2.each {|x| print x, " | " }
        puts p2
    # puts racetrack1
    # puts racetrack2
  end

  def question(question)
    puts "Your next question is: #{question}"
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
    puts "Here's the high scores:"
  File.foreach(file) { |row|
    puts row}
  end
end

#-------HERE IS A NICE LITTLE START UP DEMO ----------#
print "\e[H\e[2J"
print "\e[H"
puts "commencing screen test for curser, please wait"
sleep 1.2
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
DarkView.new.score('Bob','John',1,1)
sleep 0.6
DarkView.new.score('Grace','Amanda',1,4)
sleep 0.6
DarkView.new.score('Fredrick', 'Jimmy',6,4)
sleep 0.6
DarkView.new.score('Hacker', 'Nice Guy',6,6)
sleep 0.6
print "\e[H\e[2J"
DarkView.new.start
sleep 2
DarkView.new.question('Is this a question???')
sleep 0.5
DarkView.new.correct
sleep 0.5
DarkView.new.incorrect("this is a question")
sleep 0.5
DarkView.new.high_scores('high_scores.csv')
