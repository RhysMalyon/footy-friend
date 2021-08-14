class LeaguesController < ApplicationController
  before_action :set_league, only: %i[show destroy]

  def index
    @leagues = League.all
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
    @league.destroy
    redirect_to leagues_path
  end

  private

  def league_params
    params.require(:league).permit(:name, :photo)
  end

  def set_league
    @league = League.find(params[:id])
  end
end
