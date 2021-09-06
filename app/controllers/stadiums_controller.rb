class StadiumsController < ApplicationController
  before_action :set_stadium, only: %i[show destroy]

  def index
    @stadiums = Stadium.all
  end

  def create
    @stadium = Stadium.new(stadium_params)
    if @stadium.save
      redirect_to stadiums_path
    else
      render :new
    end
  end

  def new
    @stadium = Stadium.new
  end

  def show
    @team = Team.new
  end

  def destroy
    @stadium.destroy
    redirect_to stadiums_path
  end

  private

  def stadium_params
    params.require(:stadium).permit(:name, :capacity, :built, :photo, :user_id)
  end

  def set_stadium
    @stadium = Stadium.find(params[:id])
  end
end
