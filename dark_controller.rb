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
    @view.intro
    player_names
    @view.score(@model.player_name(0),@model.player_name(1),0,0)
    5.times do
      @scores = []
      2.times do |player|
        draw = @model.current_card
        @view.question(draw.question,@model.player_name(player))
        @model.update_score(player) if answer_checker(draw)
      end
      sleep(1)
      @view.score(@model.player_name(0),@model.player_name(1),@model.score(0),@model.score(1))
    end
    victory
  end

  def victory
      if @model.score(0) > @model.score(1)
      @view.winner(@model.player_name(0), @model.player_name(1))
    elsif @model.score(0) < @model.score(1)
      @view.winner(@model.player_name(1), @model.player_name(0))
    else
      @view.draw(@model.player_name(0), @model.player_name(1))
    end
  end

  def answer_checker(draw)
       if draw.answer == gets.chomp
        @view.correct
        return true
      else
        @view.incorrect(draw.answer)
        return false
      end
  end

  def player_names
    2.times do |player|
      @view.start(player)
      @model.set_player_name(player, gets.chomp)
    end
  end

end

DarkHorseGame.new

