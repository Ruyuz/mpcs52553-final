class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/concerts"
  end
  def create
    @user = User.find_by(email:params["email"])
    if @user != nil
      if @user.authenticate(params["password"])
        session[:user_id] = @user.id
        flash[:notice] = "Welcome back, #{@user.username}"
        redirect_to "/concerts"
      else
        flash[:notice] = "Incorrect password, please try again!"
        redirect_to "/sessions/new"
      end
    else
      flash[:notice] = "User doesn't exist!"
      redirect_to "/sessions/new"
    end
  end
end
