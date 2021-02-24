class SavedListingSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :user_id, :price
  belongs_to :listing
  belongs_to :user
end
