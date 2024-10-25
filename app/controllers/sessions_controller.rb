class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: [ :destroy ]

  def create
    user = User.find_by(username: params[:username])

    if user&.authenticate(params[:password])
      token = SecureRandom.urlsafe_base64
      user.update(session_token: token)

      cookies.encrypted[:auth_token] = {
        value: token,
        httponly: true,
        secure: false
      }

      render json: { message: "Login successful" }, status: :ok
    else
      render json: { error: "Invalid email or password" }, status: :unauthorized
    end
  end

  def destroy
    if current_user
      current_user.update(session_token: nil)
    end

    cookies.delete(:auth_token, {
      httponly: true,
      secure: Rails.env.production?,
      path: "/"
    })
    render json: { message: "Logged out", user: current_user }, status: :ok
  end
end
