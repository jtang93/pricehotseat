class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    if @game.finished
      redirect_to final_game_path(@game)
    elsif @game.all_players_choices_are_in
      redirect_to "/round/#{@game.rounds.last.id}" #round_path(id: @game.rounds.last.id)
    else
      @round = @game.rounds.last
      @player = Player.new
    end
  end

  def final
    @game = Game.find(params[:id])
    @game.finished = true
    @game.save
    render 'final'
  end

  def welcome
    render 'welcome'
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    if @game.valid?
      @game.room_code = @game.generate_room_code
      @game.started = false
      @game.finished = false
      @game.save
      redirect_to game_path(@game)
    else
      redirect_to new_game_path
    end
  end

  def update

  end

  def destroy
    # byebug
    @game = Game.find(params[:id])
    @game.destroy # TODO Not Destroying Everything :/
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name,:num_rounds)
  end

end
