#######################################
class FlashCard

  attr_reader :question, :answer #Makes them avaliable to other classes

  def initialize (question, answer)
    @question = question.chomp
    @answer = answer.chomp
  end

end
#######################################
class DarkModel #getting the questions from dark_questions_samples.txt

  def initialize
    @players = []
    2.times { @players << Player.new }
    file_parsing
  end

  def update_score(player)
    @players[player].score += 1
  end

  def score(player)
    @players[player].score
  end

  def player_name(player)
    @players[player].name
  end

  def set_player_name(player,name)
    @players[player].name = name
  end

  def file_parsing
    @flashcards = []
    questions = File.readlines('dark_questions_samples.txt')
    until questions.empty?
      question_chunk = questions.slice!(0,3)
      @flashcards << FlashCard.new(question_chunk[0],question_chunk[1])
    end
    @flashcards.shuffle!
  end

  def current_card
    @flashcards.shift
  end

end
######################################
class Player

  attr_accessor :name, :score

  def initialize
    @name = ""
    @score = 0
  end

end
######################################
