class RoundsController < ApplicationController
  def show
    #byebug
    byebug
    @round = Round.find(params[:id])
    #redirect_to round_path(@round)

  end

  def create

    @round = Round.new
    @round.game_id = params[:game_id]

    @round.save
    ri = RoundItem.new
    ri.round_id = @round.id
    ri.item_id = Item.all.sample.id
    ri.save
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
