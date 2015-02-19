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

  end

end
