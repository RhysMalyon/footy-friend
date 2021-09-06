class TeamsController < ApplicationController
  before_action :set_team, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @teams = policy_scope(Team)
    @user = current_user
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
    @user = current_user
  end

  def destroy
    @team.destroy
    redirect_back(fallback_location: '/')
  end

  private

  def team_params
    params.require(:team).permit(:name, :founded, :city, :league_id, :stadium_id, :photo, :user_id)
  end

  def set_team
    @team = Team.find(params[:id])
    authorize @team
  end
end
