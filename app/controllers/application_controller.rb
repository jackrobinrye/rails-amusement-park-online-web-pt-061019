class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :mood_is

  def hello
    @users = User.all
  end 
  
end
