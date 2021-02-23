class ListingSerializer < ActiveModel::Serializer
  attributes :id
  has_many :saved_listings
    has_many :applied_listings
    has_many :reviews
    has_many :usersf
end
