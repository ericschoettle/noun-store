class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end
end
