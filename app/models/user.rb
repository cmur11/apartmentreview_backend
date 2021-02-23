class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :saved_listings
    has_many :applied_listings
    has_many :listings, through: :applied_listings
end
