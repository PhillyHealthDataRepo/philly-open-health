class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    signin @user
    redirect_to root_url, notice: "Thank you for signing up!"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
