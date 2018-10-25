class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    @round.winner = @round.find_winner.id
    @round.save
  end

  def create

    @round = Round.new
    @round.game_id = params[:game_id]
    @round.save

    ri = RoundItem.new
    ri.round_id = @round.id
    ri.item_id = Item.all.sample.id
    ri.save

    game = Game.find(@round.game_id)

    if !game.started
      game.started = true
      game.save
    end

    redirect_to game_path(@round.game_id)
  end
end
