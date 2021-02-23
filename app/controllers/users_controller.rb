class UsersController < ApplicationController
    before_action :authenticate, only: [:show]

    def show
      render json: @current_user
    end
    def signin
        user_params = params.permit(:username, :password, :bio, :image)
    
        user = User.create(user_params)
    
        if user.valid?
          render json: user, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
end
