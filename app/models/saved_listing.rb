class SavedListing < ApplicationRecord
    belongs_to :listing
    belongs_to :user

    # validates :listing, uniqueness = {scope: :user}
end
