class AppliedListingSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :user_id, :created_at 

    belongs_to :listing
    belongs_to :user
end
