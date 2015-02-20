require 'pp'
require 'CSV'

#require_relative 'high_scores.csv'

class DarkView


  def initialize
  end


  def start(player)
    print "\e[H\e[2J"
    print "\e[H"
      puts "Welcome Player #{player+1}, please enter your name"
  end

  def score(p1,p2,s1,s2)
    track1=[" "," "," "," "," "]
    track2=[" "," "," "," "," "]
        track1.insert(s1, 'X')
        track2.insert(s2,'X')
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

  def question(question,player)
    puts "#{player}, your question is:"
    puts " #{question}"
    puts
    print"Answer: "
  end

  def correct
    puts "Well done, that is correct!"
    puts "---------------------------------"

  end

  def incorrect(answer)
    puts "Sorry, your answer was incorrect"
    puts "The correct answer is: #{answer}"
    puts "----------------------------------"
  end

def draw(u1,u2)
  puts
  puts"----Neighther #{u1} or #{u2} was better----"
end

def winner(u1,u2)
    puts
    puts "------Today was #{u1}'s day, beating #{u2}!------"
    puts "---Yay for #{u1}, Neeeeeeeigh!!!!!!! for #{u2}---"
end

  def high_scores(file)
    puts "Here's the high scores:"
  File.foreach(file) { |row|
    puts row}
  end

  def intro
#-------HERE IS A NICE LITTLE START UP DEMO ----------#
print "\e[H\e[2J"
print "\e[H"
puts "Loading 'Dark Horse, Please wait.."
sleep 1.2
2.times do print "\e[H\e[2J"
print "\e[H"
puts"- -"
sleep 0.2
print "\e[H\e[2J"
print "\e[H"
puts'\ '
puts' \ '
sleep 0.2
print "\e[H\e[2J"
print "\e[H"
puts" | "
puts" | "
sleep 0.2
print "\e[H\e[2J"
print "\e[H"
puts" /"
puts"/ "
sleep 0.2
end
end
end
