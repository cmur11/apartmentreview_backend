class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :saved_listings
    has_many :applied_listings
    has_many :listings, through: :applied_listings

    validates :username, uniqueness: true
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true
    
end
