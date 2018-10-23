class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    if flash[:round_id]
      @round = Round.find(flash[:round_id])
    else
      @round = @game.rounds.last
      @player = Player.new
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    @game.room_code = (0...4).map {(65 +rand(26)).chr }.join
    @game.started = false
    @game.save
    redirect_to game_path(@game)
  end

  def update

  end

  def destroy
    # byebug
    @game = Game.find(params[:id])
    @game.delete
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name)
  end

end
