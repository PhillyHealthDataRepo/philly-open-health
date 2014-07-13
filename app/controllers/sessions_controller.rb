class SessionsController < ApplicationController

  # GET /sessions/new
  def new
  end

  # Creating a new session.. would that be a POST??
  def create
    @user = User.find_by_email(params[:email])
     if @user && @user.authenticate(params[:password])
        login @user
        redirect_to root_url, notice: "Signed in!"
    else
        flash.now.alert = "Email or password is invalid."
        render :new
    end
  end

  # Delete current session
  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out!"
  end
end
