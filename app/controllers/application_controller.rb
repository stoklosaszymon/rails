class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #allow_browser versions: :modern

    def authenticate_user!
      auth_token = cookies.encrypted[:auth_token]

      @current_user = User.find_by(session_token: auth_token) if auth_token.present?

      unless @current_user
        raise "Not authorize"
      end
    end

    def current_user
      @current_user
    end
end
