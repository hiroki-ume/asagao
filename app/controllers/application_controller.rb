class ApplicationController < ActionController::Base

  class LoginRequired < StandardError; end
  class Forbidden < StandardError; end

  private

  def login_required
    raise LoginRequired unless current_member
  end

  def current_member
    Member.find_by(id: session[:member_id]) if session[:member_id]
  end
  helper_method :current_member

end
