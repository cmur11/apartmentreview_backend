class ReviewsController < ApplicationController

    def index 
        reviews = Review.all 
        render json: reviews, :except => [:created_at, :updated_at]
    end 

    def update
        review = Review.find(params[:id])
        review.update(reviews_params)
        render json: review
    end 

    
    def create
        review = Review.create(reviews_params)
        render json: review
    end 

    def show
        review = Review.find_by(id:params['id'])
        render json: review
    end

    def destroy
        review = Review.find_by(id:params['id'])
        review.delete
        render json: review
    end

        private 
    def reviews_params
        params.require(:review).permit(:user_id, :listing_id, :comment, :rating)
        
    end 

end
