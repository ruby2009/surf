class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_author

  private

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end

  def require_author
    unless current_author
      flash[:warning] = "You have to be logged in."
      redirect_to login_path
    end
  end
end
