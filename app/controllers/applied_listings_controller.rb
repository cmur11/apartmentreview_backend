class AppliedListingsController < ApplicationController
    def index 
        applied_listings = AppliedListing.all
        render json: applied_listings
    end

    def create
        applied_listing = AppliedListing.create(applied_listings_params)
        render json: applied_listing
    end

    def show
        applied_listing = AppliedListing.find_by(id:params['id'])
    end

    def destroy
        applied_listing = AppliedListing.find_by(id:params['id'])
        applied_listing.delete
        render json: applied_listing
    end

    private
    def applied_listings_params
        params.require(:applied_listing).permit(:listing_id,:user_id)
    end

end
