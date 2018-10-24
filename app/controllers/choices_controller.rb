class ChoicesController < ApplicationController
  def create
    @choice = Choice.create(choice_params)
    redirect_to game_path(@choice.round.game) # REFACTOR, using more resful
  end

  private

  def choice_params
    params.require(:choice).permit(:player_id, :round_id, :guess_ammount)
  end

end
