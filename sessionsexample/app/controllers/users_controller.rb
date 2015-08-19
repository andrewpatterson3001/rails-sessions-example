class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      session[:id] = user.id
      redirect_to user
    else
      redirect_to root_path
    end
  end

  def index
  end

  def show
    @user = User.find(session[:id])
  end

  def new
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :type)
    end
end
