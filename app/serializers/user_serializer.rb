class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
    has_many :reviews
    has_many :saved_listings
    has_many :applied_listings
    has_many :listings
end
