class ListingSerializer < ActiveModel::Serializer
  attributes :id, :price, :zip_code, :photos, :bedrooms, :sqft, :bathrooms, :days_on_market, :previous_price, :broker_email
  has_many :saved_listings
    has_many :applied_listings
    has_many :reviews
    has_many :users
end
