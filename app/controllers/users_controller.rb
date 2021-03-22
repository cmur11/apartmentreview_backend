class UsersController < ApplicationController
    before_action :authenticate, only: [:show]

    def show
      render json: @current_user
    end

    def login 
    
    
    end

    def signin
        user_params = params.permit(:username, :password, :email)
    
        user = User.create(user_params)
    
        if user.valid?
          render json: user, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def index 
        users = User.all
        render json: users
    end

    def new 
        user = User.new 
        render json: user
    end 

    def create
        user = User.create(user_params)
        render json: user
    end


    def show
        user = User.find_by(id:params['id'])
    end

    def destroy
        user = User.find_by(id:params['id'])
        user.delete
        render json: user
    end

    private
    def user_params
        params.require(:User).permit(:username,:password, :email)
    end



    
end
