class AppliedListingsController < ApplicationController
    def index 
        applied_listings = AppliedListing.all
        render json: applied_listings
    end

    def create
        applied_listing = AppliedListing.create(applied_listing_params)
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
    def applied_listing_params
        params.require(:AppliedListing).permit(:user_id,:listing_id)
    end

end
