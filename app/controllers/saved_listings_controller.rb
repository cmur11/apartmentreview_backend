class SavedListingsController < ApplicationController
    def index 
        saved_listings = SavedListing.all
        render json: saved_listings
    end

    def create
        saved_listing = SavedListing.create(saved_listing_params)
        render json: saved_listing
    end

    def show
        saved_listing = SavedListing.find_by(id:params['id'])
        render json: saved_listing
    end

    def destroy
        saved_listing = SavedListing.find_by(id:params['id'])
        saved_listing.delete
        render json: saved_listing
    end

    private
    def saved_listing_params
        params.require(:saved_listing).permit(:user_id,:listing_id, :price)
    end
end
