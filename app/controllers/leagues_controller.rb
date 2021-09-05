class LeaguesController < ApplicationController
  before_action :set_league, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @leagues = policy_scope(League)
  end

  def create
    @league = League.new(league_params)
    if @league.save
      redirect_to league_path(@league)
    else
      render :new
    end
  end

  def new
    @league = League.new
  end

  def show
    @team = Team.new
  end

  def destroy
    record.user == user
    @league.destroy
    redirect_to leagues_path
  end

  def edit; end

  def update
    record.user == user
    if @league.update(league_params)
      redirect_to edit_league_path(@league)
    else
      render :show
    end
  end

  private

  def league_params
    params.require(:league).permit(:name, :photo)
  end

  def set_league
    @league = League.find(params[:id])
    authorize @league
  end
end
