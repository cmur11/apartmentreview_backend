class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username,:password
    has_many :reviews
    has_many :saved_listings
    has_many :applied_listings
    has_many :listings
end
