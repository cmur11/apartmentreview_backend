class ListingsController < ApplicationController
    def index 
        listings = Listing.all 
        render json: listings
    end 

    def update
        listing = Listing.find(params[:id])
        #  byebug
        listing.update(listings_params)
        render json: listing
    end 

    def show
        listing = Listing.find_by(id:params['id'])
        render json: listing
    end
    
    def create
        listing = Listing.create(listings_params)
        render json: listing
    end 

    def destroy
        listing = Listing.find_by(id:params['id'])
        listing.delete
        render json: listing
    end

        private 
    def listings_params
        params.require(:listing).permit(:user_id, :listing_id,:photos, :comment, :rating)
        # :user_id, :listing_id,:comment, :rating)
        
    end 
end
