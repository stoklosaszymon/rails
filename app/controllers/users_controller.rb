class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    wrap_parameters :user, include: [ :email, :username, :password, :password_confirmation ]
    before_action :authenticate_user!, except: [ :create ]
    def create
        begin
            @user = User.create(user_params)
            if @user.save
                render json: @user.as_json
            end
        rescue
            render json: { message: "error creating user", errors: @user.errors.full_messages }
        end
    end

    def index
        render json: User.all
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :username)
    end
end
