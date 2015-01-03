class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end

  private
    def authenticate
      if current_user.blank?
        session[:user_redirect_url] = request.fullpath if request.get?
        user_not_authenticated
      end
    end

    def user_not_authenticated
      session.delete :user_id
      redirect_to user_sign_in_path
    end

    def user_not_authorized
      flash[:error] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
  # end private
end
