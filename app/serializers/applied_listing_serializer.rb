class AppliedListingSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :listing_id ,:price

    belongs_to :listing
    belongs_to :user
end
