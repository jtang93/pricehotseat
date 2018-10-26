class ChoicesController < ApplicationController
  def create
    #byebug
    if Round.find(params[:choice][:round_id]).choices.map{|c| c.guess_ammount}.include?(params[:choice][:guess_ammount].to_i)
      flash[:error] = 'Must Enter Unique Amount'
      redirect_to game_path(Round.find(params[:choice][:round_id]).game)
    elsif params[:choice][:guess_ammount].to_i <= 0
      flash[:error] = 'Must Enter Amount Above Zero'
      redirect_to game_path(Round.find(params[:choice][:round_id]).game)
    else
      @choice = Choice.create(choice_params)
      redirect_to game_path(@choice.round.game) # REFACTOR, using more resful
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:player_id, :round_id, :guess_ammount)
  end

end
