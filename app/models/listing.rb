class Listing < ApplicationRecord
    has_many :saved_listings
    has_many :applied_listings
    has_many :reviews
    has_many :users, through: :reviews
end
