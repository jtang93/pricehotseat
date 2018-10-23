class RoundsController < ApplicationController
  def show
    #byebug
    @round = Round.find(params[:id])
  end

  def create
    @round = Round.new
    @round.game_id = params[:game_id]
    @round.item_id = # Get Rand From Items
    @round.save

    # Set game.started to true

    game = Game.find(@round.game_id)

    if !game.started
      game.started = true
      game.save
    end
    flash[:round_id] = @round.id
    redirect_to game_path(@round.game_id)
  end
end
