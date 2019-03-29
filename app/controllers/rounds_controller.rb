class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    if tmp_winner = @round.find_winner
      @round.winner = tmp_winner.id
      tmp_winner.wins += 1
      tmp_winner.save
    else
      @round.winner = nil
    end
    @round.save
  end

  def create

    @round = Round.new
    @round.game_id = params[:game_id]
    @round.save

    ri = RoundItem.new
    ri.round_id = @round.id

    if !@round.game.rounds.first.item
      ri.item_id = Item.all.sample.id
      ri.save
    else
      ri.item_id = @round.find_uniq_item.id
      ri.save
    end

    game = Game.find(@round.game_id)

    if !game.started
      game.started = true
      game.save
    end

    redirect_to game_path(@round.game_id)
  end

  def destroy
    @round = Round.find(params[:id])
    @round.delete
  end
end
