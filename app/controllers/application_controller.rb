class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :lookup_user #we want this to run on every controller. this is not running until we call it.

  def lookup_user
   reset_session #use this when they ask you to find a user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

end
