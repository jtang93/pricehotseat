class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def create
    @player = Player.create(player_params)
    redirect_to game_path(@player.game_id)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.delete
  end

  private

  def player_params
    game = Game.find_by(room_code: params[:player][:room_code])
    params[:player][:game_id] = game.id
    params.require(:player).permit(:name, :room_code, :game_id)
  end
end
