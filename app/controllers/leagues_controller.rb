class LeaguesController < ApplicationController
  before_action :require_login, only: %i[create destroy edit new update]
  before_action :set_league, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @leagues = policy_scope(League)
    @user = current_user
  end

  def create
    @league = League.new(league_params)
    @league.user = current_user
    authorize @league
    if @league.save
      redirect_to league_path(@league)
    else
      render :new
    end
  end

  def new
    @league = League.new
    authorize @league
  end

  def show
    @team = Team.new
  end

  def destroy
    @user = current_user
    authorize @league
    @league.destroy
    redirect_to leagues_path, notice: 'Your league was successfully removed'
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
    params.require(:league).permit(:name, :photo, :user_id)
  end

  def set_league
    @league = League.find(params[:id])
    authorize @league
  end

  def require_login
    unless signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_url # halts request cycle
    end
  end
end
