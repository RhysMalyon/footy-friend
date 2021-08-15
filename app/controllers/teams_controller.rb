class TeamsController < ApplicationController
  before_action :set_team, only: %i[show destroy]

  def index
    @teams = Team.all
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def new
    @team = Team.new
  end

  def show
    @league = League.new
    @stadium = Stadium.new
    @player = Player.new
  end

  def destroy
    @team.destroy
    redirect_back(fallback_location: '/')
  end

  private

  def team_params
    params.require(:team).permit(:name, :founded, :city, :league_id, :stadium_id, :photo)
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
