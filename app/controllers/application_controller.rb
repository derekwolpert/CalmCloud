class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.includes(:comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob, profile_cover_attachment: :blob, tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob], favorite_tracks: [ audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [:tracks, :comments, :favorites, :subscriptions, :subscribers, profile_pic_attachment: :blob]], user_subscribers: [profile_pic_attachment: :blob], subscribe_users: [profile_pic_attachment: :blob]).find_by(session_token: session[:session_token])
  end

  def require_logged_out
    redirect_to user_url(current_user) if logged_in?
  end

  def require_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def logged_in?
    !!current_user
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
    current_user = nil
  end

  def login!(user)
    session[:session_token] = user.reset_session_token!
  end

end