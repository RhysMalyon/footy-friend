class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Your profile has been updated'
    else
      render :edit
    end
  end

  def profile
    redirect_to user_path(current_user)
    authorize current_user
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
