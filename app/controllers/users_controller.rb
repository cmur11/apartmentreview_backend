class UsersController < ApplicationController
    before_action :authenticate, only: [:show]

 

    def login
      # byebug
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
        render json: { user: UserSerializer.new(user), token: token }
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end

    def signup
        # user_params = params.permit(:username, :password, :email)
    
        user = User.create(user_params)
    
        if user.valid?
          token = JWT.encode({user_id: user.id}, 'my_secret', 'HS256')
          render json: { user: UserSerializer.new(user), token: token }
        else
          render json: { error: user.errors.full_messages }, status: :unauthorized
        end
      end

    #   def index 
    #     users = User.all
    #     render json: users
    # end

    def logout
      @current_user = nil
      render json: {}
    end
  

    def show
        render json: @current_user
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
