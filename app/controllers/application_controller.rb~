class ApplicationController < ActionController::Base
  
 before_filter :authorize
  
  protect_from_forgery

  helper_method :yt_client

  
  def yt_client
    @yt_client ||= YouTubeIt::Client.new(:username => YouTubeITConfig.username , :password => YouTubeITConfig.password , :dev_key => YouTubeITConfig.dev_key)
  end
 
  protected
  
  def authorize
      unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "please log in"
      end
  end
  
end
