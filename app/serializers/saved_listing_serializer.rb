class SavedListingSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :listing
  belongs_to :user
end
