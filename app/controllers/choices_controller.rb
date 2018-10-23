class ChoicesController < ApplicationController
  def create
    @choice = Choice.create(choice_params)

    round = Round.find(@choice.round_id)

    flash[:round_id] = round.id
    redirect_to game_path(round.game_id)
  end

  private

  def choice_params
    params.require(:choice).permit(:player_id, :round_id, :guess_ammount)
  end

end
