class AppliedListingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id

    belongs_to :listing
    belongs_to :user
end
