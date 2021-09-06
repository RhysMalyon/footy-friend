class PlayersController < ApplicationController
  before_action :set_player, only: %i[destroy]

  def create
    @player = Player.new(player_params)
    authorize @player
    @player.user = current_user
    if @player.save
      redirect_to team_path(@player.team)
    else
      render :new
    end
  end

  def new
    @player = Player.new
  end

  def destroy
    @player.destroy
    redirect_to team_path(@player.team)
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :nationality, :position, :team_id, :photo, :user_id)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
