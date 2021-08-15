class PlayersController < ApplicationController
  before_action :set_player, only: %i[show destroy]

  def index
    @players = Player.all
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  def new
    @player = Player.new
  end

  def show
    @team = @player.team
  end

  def destroy
    @player.destroy
    redirect_to team_path(@player.team)
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :nationality, :position, :team_id, :photo)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
