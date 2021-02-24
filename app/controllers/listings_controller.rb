class ListingsController < ApplicationController
    def index 
        listings = Listing.all 
        render json: listings, :except => [:created_at, :updated_at]
    end 

    def update
        listing = Listing.find(params[:id])
        listing.update(listings_params)
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
        params.require(:listing).permit(:user_id, :listing_id, :comment, :rating)
        
    end 
end
