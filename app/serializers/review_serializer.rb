class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id, :comment, :rating
    belongs_to :user
    belongs_to :listing
end
