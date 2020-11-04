class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def new
        review = Review.new
    end

    def create
        # byebug
        user = User.find_by(id: params[:user][:id])
        album = Album.find_by(id: params[:album][:id])
        review = Review.create!(description: review_params[:description], rating: review_params[:rating], album: album, user: user)

        if review.save
            render json: review
        else
            render json: {error: review.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {}
    end

    private

    def review_params
        params.require(:review).permit(:description, :rating)
    end

end
