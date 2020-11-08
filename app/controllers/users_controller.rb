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
        user = User.create!(username: user_params[:username], password: user_params[:password], name: user_params[:name], email: user_params[:email], image: user_params[:image], badge: "Novice")
        if user.save
            render json: user
        else
            render json: {error: user.error.full_messages}, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end

    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name, :email, :image, :badge)
    end
        
end
