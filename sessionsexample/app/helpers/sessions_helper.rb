module SessionsHelper
  def loggedin?
    session[:id]
  end

  def logout
    session[:id] = nil
  end
end
