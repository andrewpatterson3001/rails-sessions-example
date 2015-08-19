class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:id] = @user.id
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
