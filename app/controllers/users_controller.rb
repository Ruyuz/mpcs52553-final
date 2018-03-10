class UsersController < ApplicationController

  def show
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Nice try!"
    end
  end

  def index
    @users = User.all.order('email')
  end

  def new # /users/new
    @user = User.new
  end

  def update
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Nice try!"
    else
      user = User.find_by(id: params["id"])
      user.username = params["username"]
      user.email = params["email"]
      user.password = params["password"]
      user.save
      redirect_to "/users"
    end
  end

  def destroy
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Nice try!"
    else
      user = User.find_by(id: params["id"])
      user.delete
      redirect_to "/users"
    end
  end

  def create # POST /users
    # @user = User.create :email => params["email"], :password => params["password"]
    user = User.find_by(email: params["email"])

    if user == nil
      @user = User.new
      @user.username = params["username"]
      @user.email = params["email"]
      @user.password = params["password"]
      if @user.save
        redirect_to "/users", notice: "Thanks for signing up"
      else
        redirect_to "/users", notice: "error"
      end
    else
      redirect_to "/users/new", notice: "Email already existed! Please change a new email"
    end

  end

end
