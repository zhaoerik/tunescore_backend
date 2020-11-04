class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def new
        user = User.new
    end
    
    def create
        # byebug
        user = User.create!(user_params)
        if user.save
            render json: user
        else
            render json: {error: user.error.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name, :email, :image)
    end
        
end
