require_relative 'dark_model'
require_relative 'dark_view'

class DarkHorseGame

  def initialize
    model = DarkModel.new
    view = DarkView.new
    @controller = DarkController.new(model, view)
    play
  end

  def play
    @controller.play
  end

end

class DarkController

  def initialize(model,view)
    @model = model
    @view = view
  end

  def play

    #deck.length.times do
      #draw card
      #player 1 question
      #check answer and update results
      #player 2 question
      #check answer and update results
      #update the score.
    #end

    current_card = @model.current_card
    @view.question(current_card.question)
    @view.incorrect(current_card.answer)


  end


  def player_names
    @view.start_1
      @model.player_1 = gets.chomp
    @view.start_2
      @model.player_2 = gets.chomp
  end
end

DarkHorseGame.new

