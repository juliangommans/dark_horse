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
    file_parsing
  end

  def file_parsing
    @flashcards = []
    questions = File.readlines('dark_questions_samples.txt')
    until questions empty?
      question_chunk = questions.slice!(0,3)
      @flashcards << FlashCard.new(question_chunk[0],question_chunk[1])
    end
    @flashcards.shuffle!
  end

  def current_card
    @flashcards.shift
  end

  def scoring_system

  end

end
######################################
# DRIVER CODE
