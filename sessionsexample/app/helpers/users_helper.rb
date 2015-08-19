module UsersHelper
  def current_user
    @user ||= User.find_by(id: session[:id])
  end
end
